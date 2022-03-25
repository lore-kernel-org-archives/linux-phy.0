Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7534FC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 25 Mar 2022 17:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFkALj2M1lLpBOA29i3cynzdU5VRZCzVhtSr8MU2nmA=; b=mFWBfj3hcYLKd1
	kLjy7RmJ+Hpeq4X2fCog4cdbjvU/z1d5ZSq8FY7EtzZQajmvEloeuuaaL+BLVx84hZYWQjwS0gOfc
	U4zZvXIlka/XOJaqwfFals3XYnIVkWLSJLBU0sn7mqXj9ouUCi2egOYmWbdre0pnXEkBRiJf70DkH
	fkuQyU9v6YSYM9M3MVNLMLtWB86NFgXlo+dL8ptYGhnCI3XC+vrFyhl/ltIknsrfrp/xxb/P2cCGE
	UqQh8WeCDUetWFwQvFmHkXktFW3mXU2YwKPNJSuMBM+ljEBbDlxxWUAUACkNktKRfp1DjX3XLM28u
	PAuOgVoIPU85o7kJeN4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXnbW-002jSW-5M; Fri, 25 Mar 2022 17:20:02 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXnYW-002hSy-Dj
 for linux-phy@lists.infradead.org; Fri, 25 Mar 2022 17:16:59 +0000
Received: by mail-wm1-x333.google.com with SMTP id
 p26-20020a05600c1d9a00b0038ccbff1951so3144157wms.1
 for <linux-phy@lists.infradead.org>; Fri, 25 Mar 2022 10:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NqdfmywTZ6fQ/7jJTAQIW5tJoHGg7kZG5yl6dza7Kzg=;
 b=6bXchobGzN8pKvh+gXq4jQSUpRYYt6KibxSAsqSutu1/Yix1bAtFWio+4+5L2OT8gO
 KRwuxVreNneXSQGczLUHqu/9HMPhxIRfgbJW/r3UPWCbrTyCufwjX5onl9UM5gV/JWhK
 zUAlnmhVP2Md/IVwZvzxDWkkSGER0G02QgvLhUL/X7jArek2m0p9TQei65y4Fqg0z9RB
 F6/adAuTQCOPL7XbJ907Vf3vNG3Pv+ViBiGQYC4xuV49DFVqBZv5yCQRWsvtbUueYzoS
 Hl22196SiZd0bGZTvV+MLU+u/PO6RWkOpZhSUmnIt+Vic3k1GEXhwXmSAMdccnZ7lakM
 fwnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NqdfmywTZ6fQ/7jJTAQIW5tJoHGg7kZG5yl6dza7Kzg=;
 b=JRjJp33f1yXwDF4/81T3S3jtdGU0dFFSjBIjRaI4fh9xqh0xalVsy+3PdL2wPXd2kz
 RA+NWM8Xrzr+k6rMiy9cB8R07kXezQ6Y+jfRkJxDFEfUlHcsXBzGeg/p4UCSZzJ/o4/9
 45smipDqOVVqSATcGrH1tUjcnNPciEIeveCqkX24N2FIh0lqtYkA4np3k+JyY7W09N5K
 L06X/zLPMKL9asPIyrB18n8fNskqowCKxtZc3E38Tl03W4v6gp5+FJWF6Sn7/N8rE849
 dZJyn8rBtkL/kjtM/OevZUbGgoHjJaZl//4Oj933FQDyjdCZwiCSl4NQ6tcCfjX63Dra
 UijA==
X-Gm-Message-State: AOAM531cJItXn3nyzvRLSPPiokT4aCw7Tpq0RMnYDKMQsDjkA7rv0ZQl
 9r7CzTK0hC0rv0iMIg9UEN7diQ==
X-Google-Smtp-Source: ABdhPJztbg41uIEn6kYbSEgV3LT+xnRXVt+kN+pXwZTNOue5R4lV3fouoQj4ndoTzsNVOsRmWuPg8Q==
X-Received: by 2002:a7b:c30c:0:b0:38c:8ff1:625b with SMTP id
 k12-20020a7bc30c000000b0038c8ff1625bmr20345780wmj.30.1648228611391; 
 Fri, 25 Mar 2022 10:16:51 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6240-cc41-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6240:cc41:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 p16-20020a5d6390000000b00203ffebddf3sm7547464wru.99.2022.03.25.10.16.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 10:16:51 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
To: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@linux.ie,
 daniel@ffwll.ch, robh+dt@kernel.org, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, matthias.bgg@gmail.com,
 chunfeng.yun@mediatek.com, kishon@ti.com, vkoul@kernel.org, deller@gmx.de,
 ck.hu@mediatek.com, jitao.shi@mediatek.com,
 angelogioacchino.delregno@collabora.com
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org, markyacoub@google.com
Subject: [PATCH 04/22] drm/edid: Convert cea_sad helper struct to kernelDoc
Date: Fri, 25 Mar 2022 18:14:53 +0100
Message-Id: <20220325171511.23493-5-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325171511.23493-1-granquet@baylibre.com>
References: <20220325171511.23493-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_101656_495013_5D184716 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 include/drm/drm_edid.h | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
index 144c495b99c4..5d4d840b9904 100644
--- a/include/drm/drm_edid.h
+++ b/include/drm/drm_edid.h
@@ -359,12 +359,17 @@ struct edid {
 
 #define EDID_PRODUCT_ID(e) ((e)->prod_code[0] | ((e)->prod_code[1] << 8))
 
-/* Short Audio Descriptor */
+/* struct cea_sad - Short Audio Descriptor.
+	@format: See HDMI_AUDIO_CODING_TYPE_*.
+	@channels: max number of channels - 1.
+	@freq: See CEA_SAD_FREQ_*.
+	@byte2: meaning depends on format.
+*/
 struct cea_sad {
 	u8 format;
-	u8 channels; /* max number of channels - 1 */
+	u8 channels;
 	u8 freq;
-	u8 byte2; /* meaning depends on format */
+	u8 byte2;
 };
 
 struct drm_encoder;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
