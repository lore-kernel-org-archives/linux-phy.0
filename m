Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 820E1C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 05:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O53gpSZ0FAu7Z5nYEkMPJ73SQlOqzpWsBQxfWkos5no=; b=B2RBLNaJ+FcSVU
	qjxd3HXWoDlbC7YXtuEOTzADdT/+tumMaIXsfpT1imR3aoCYwsq0Go4UJRXL1REjsk9wqrAhGe5LB
	jZak/DtwuBda5ZhH5oAxDvolShTi5G31yzx4IAl364SoH9eWBJ24v630r5s0nTundj5d2tYQOgRvF
	Z6wazh1/ouMNmqlR8sspuFO9LeMXT8SDf5VIi8f0FSEa8zv4PcPFT3DlffXtE7c4Ie6oXH5bnJO3E
	pd2hTT4U3W72sPthfNGtVUyEFQmEtX5cKOv5auP0AKqbL2rX6UjFIHPHkLndBvZgdl1AT1PGL9Nnh
	Zzb9SCMPhQQWGwbPG0vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n24uO-000DDO-VL; Tue, 28 Dec 2021 05:20:24 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n24uK-000DAK-UC
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 05:20:22 +0000
Received: by mail-ot1-x329.google.com with SMTP id
 o3-20020a9d4043000000b0058f31f4312fso20854599oti.1
 for <linux-phy@lists.infradead.org>; Mon, 27 Dec 2021 21:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xZa4EhWfNkRpMwcvywpqM2AywO8tV56PCaorCk5JGsI=;
 b=hUcS1GmTWBNeI82qv2MUBR1csBy1hTrQCV2Q5WTDF555O7gVJgP0YUIULBx6U/lw++
 7R53/o01jIyA59wOa8ktH2PmYQGZpi9sYfsnpS0yYEJyIp53LKyJz9YgUr6/rR9INCc7
 pvlmADnC/Xd4n1guF1zpaxS2aSPntl7IHKZBpEDX+h/yxbbzWr04MlIeXcK8pkGkVhVD
 U2YyW/KdUp32MoBs1p1lqE/JKeAuk4Oc29m2YHple1kfGEfn0oFMLFtG7hyM1cIu0Evh
 Nbx5VhpoTfl1i3x6qnU6qg0y+liXvlDN1whJxOQs4W9Wq2FYSkofItYnuMMlXvi0T3HW
 oXRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xZa4EhWfNkRpMwcvywpqM2AywO8tV56PCaorCk5JGsI=;
 b=6yWLWPupf+88IyDnqGkiJYIv4Bq3Nw7q0Z3BoYABHLURBtnv866r2Vd1BdloBmKeHY
 2oCU9+PzEBS+sqsjikEVRmYJhm0cV8yB704j0rT+V85N+0LmFS9ea9q8XDsGbi8FW+ou
 bmTFYQDic+6bOdZE0afUDwNsX+ewAN282OB0qjgSRZ0tHqa6qS2bllM5UhrL9VrDyJ8x
 kw70nMhXYVsJN9ViU56FjP06Hyjs+N4exX7QK5UzdGq2szYjMWT9UHK5sk/5L4nBa/18
 Oqin5ITrPPIxb/5/wHjT7nIeBVW5q+wSJnhY4ZLM85DssoeMOC99DOg48N/c8jZajpLO
 R3WA==
X-Gm-Message-State: AOAM530qhtc5k5ajPSFLxZx6RXCe5xALcm6tyOLGm+gVfPVlRqqnxHMQ
 V9+BrHwnlOAIU/NNbfOKb1d1Pg==
X-Google-Smtp-Source: ABdhPJyBuovnSgiRJ9m+z8PQ+bRYoRJRWCruggSPY+l8ust4yU1NF2wsT+E+hzUPNnbsB8C5hGKPUQ==
X-Received: by 2002:a05:6830:244c:: with SMTP id
 x12mr10806941otr.197.1640668819873; 
 Mon, 27 Dec 2021 21:20:19 -0800 (PST)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id j5sm3002277oou.23.2021.12.27.21.20.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Dec 2021 21:20:19 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: [PATCH 4/8] device property: Use multi-connection matchers for single
 case
Date: Mon, 27 Dec 2021 21:21:12 -0800
Message-Id: <20211228052116.1748443-5-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
References: <20211228052116.1748443-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_212020_998137_161DC4EB 
X-CRM114-Status: GOOD (  11.48  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The newly introduced helpers for searching for matches in the case of
multiple connections can be resused by the single-connection case, so do
this to save some duplication.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/base/property.c | 53 ++++-------------------------------------
 1 file changed, 5 insertions(+), 48 deletions(-)

diff --git a/drivers/base/property.c b/drivers/base/property.c
index 0aa0296fd991..213612f7113a 100644
--- a/drivers/base/property.c
+++ b/drivers/base/property.c
@@ -1157,29 +1157,6 @@ const void *device_get_match_data(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(device_get_match_data);
 
-static void *
-fwnode_graph_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
-			  void *data, devcon_match_fn_t match)
-{
-	struct fwnode_handle *node;
-	struct fwnode_handle *ep;
-	void *ret;
-
-	fwnode_graph_for_each_endpoint(fwnode, ep) {
-		node = fwnode_graph_get_remote_port_parent(ep);
-		if (!fwnode_device_is_available(node))
-			continue;
-
-		ret = match(node, con_id, data);
-		fwnode_handle_put(node);
-		if (ret) {
-			fwnode_handle_put(ep);
-			return ret;
-		}
-	}
-	return NULL;
-}
-
 static unsigned int fwnode_graph_devcon_matches(struct fwnode_handle *fwnode,
 						const char *con_id, void *data,
 						devcon_match_fn_t match,
@@ -1210,28 +1187,6 @@ static unsigned int fwnode_graph_devcon_matches(struct fwnode_handle *fwnode,
 	return count;
 }
 
-static void *
-fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
-		    void *data, devcon_match_fn_t match)
-{
-	struct fwnode_handle *node;
-	void *ret;
-	int i;
-
-	for (i = 0; ; i++) {
-		node = fwnode_find_reference(fwnode, con_id, i);
-		if (IS_ERR(node))
-			break;
-
-		ret = match(node, NULL, data);
-		fwnode_handle_put(node);
-		if (ret)
-			return ret;
-	}
-
-	return NULL;
-}
-
 static unsigned int fwnode_devcon_matches(struct fwnode_handle *fwnode,
 					  const char *con_id, void *data,
 					  devcon_match_fn_t match,
@@ -1276,16 +1231,18 @@ void *fwnode_connection_find_match(struct fwnode_handle *fwnode,
 				   const char *con_id, void *data,
 				   devcon_match_fn_t match)
 {
+	unsigned int count;
 	void *ret;
 
 	if (!fwnode || !match)
 		return NULL;
 
-	ret = fwnode_graph_devcon_match(fwnode, con_id, data, match);
-	if (ret)
+	count = fwnode_graph_devcon_matches(fwnode, con_id, data, match, &ret, 1);
+	if (count)
 		return ret;
 
-	return fwnode_devcon_match(fwnode, con_id, data, match);
+	count = fwnode_devcon_matches(fwnode, con_id, data, match, &ret, 1);
+	return count ? ret : NULL;
 }
 EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
 
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
