# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# If this file is placed at FLUME_CONF_DIR/flume-env.sh, it will be sourced
# during Flume startup.

# Enviroment variables can be set here.

# export JAVA_HOME=/usr/lib/jvm/java-6-sun

# Give Flume more memory and pre-allocate, enable remote monitoring via JMX
# export JAVA_OPTS="-Xms100m -Xmx2000m -Dcom.sun.management.jmxremote"

# Note that the Flume conf directory is always included in the classpath.
#FLUME_CLASSPATH=""

CLEAN_FLAG=1
################################
# functions
################################

info() {
  if [ ${CLEAN_FLAG} -ne 0 ]; then
    local msg=$1
    echo "Info: $msg" >&2
  fi
}

# for elasticsearch
add_es_paths(){
  if [ -d "${ES_HOME}" ]; then
    info "Including ElasticSearch libraries found via ($ES_HOME) for ElasticSearch access"
    FLUME_CLASSPATH="$FLUME_CLASSPATH:$ES_HOME/lib/*"
  else
    info "Including ElasticSearch libraries found via (/opt/elasticsearch-2.1.1/lib) for ElasticSearch access"
    FLUME_CLASSPATH="$FLUME_CLASSPATH:/opt/elasticsearch-2.1.1/lib/*"
  fi
}

# look for es libs
add_es_paths
 

