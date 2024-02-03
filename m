Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C798AC4828D
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 16:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m//MEvI/u/ceaKUJpt7B1Zt4H8ud5vFPNqqUf+Q2Oxk=; b=EG0reGPXwlcY+9
	tQS/TMndA4o4y7GzNVGu/3LG9KZu4i/0jMUOp99awqkL4O/JV5R8sjgAcSP/cm9E+aU3KGI4hYW+t
	C/9Y7DU5xYt1WsheOiYF14OQmdV6OFN5bJbx4TvzvL8SCCwgTIvdRBaULDD0/3352TaPFmwqCXjYr
	Q/4NokMTQEJg8KE2UQE62yLPhAFamHSrdQ46lUxvEv6rKmKbzBPnhCBgQ7MmX1gNQG3gWYED6ch6B
	IoMkQ51rR86t1rSiq1QItUK+6ugAHqRLMG/ZhIrvl47s7Ts8s3KYNVzZvqoesvGv4LIwxDaYD2gNw
	DFklZDSyBDd5nA9iLiMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJIA-0000000Gr1b-0OrL;
	Sat, 03 Feb 2024 16:54:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHw-0000000GqrP-3S84;
	Sat, 03 Feb 2024 16:54:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=vyFysKI+ulqGIrIVYWeP6alGWB5geZ7uKPOowV05Tlo=; b=KFL7pzrUpkS9yFdAbvGu64J3GB
	xrBZX51e5l5hMmnOSMmpsAx/gtz8NRCmaVS9W/+Peoo0yu2Bh/uaJj1BsP/91RC01pF6fIDTW6PpS
	5wwR03SGGAbkGgupTRkQStl/v56NqqQf6dRyWLyR9RxMw14F0pXVlOe1aE3nRje2SuiRKu7x/3COZ
	tPnNHqVu0Vs9pmg/4lHefhtkbzCsEZLbXrADdMDV2fpVDgzIz6vRB4Hvr6zstNhTmGbQRge/aT12t
	wzCttX5d4FW0hbxIqKwaoJ5GbmySDGI1OWHqb5fKKZ8ICIisc3teQ15NN7hByMyrsKFMhz5BtaRDA
	TKi//thQ==;
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJHt-0000000Asi0-0Axp;
	Sat, 03 Feb 2024 16:54:43 +0000
Received: by mail-il1-x12d.google.com with SMTP id e9e14a558f8ab-363c28eb463so819315ab.3;
        Sat, 03 Feb 2024 08:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706979276; x=1707584076; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vyFysKI+ulqGIrIVYWeP6alGWB5geZ7uKPOowV05Tlo=;
        b=Q8SCqnTZMJgBcZ65BQk19MiGpS9M197crSEixxoIztIG3VkBqobTa/2pqmWjMONYzn
         k/rQohUfBzH7JGxWkfjHBjlGCHXBrQ19m9nOe1+OROGDD3+N8DwINAO1S5xbB/bA1SBr
         1HVi1L8TV1l6J0ucMDHjr38dimbJAeYoczMLOSpx8Riq/u87kAYskUR3y47f2kSiNHiI
         qVCW4iDS8Kkg/e+aUwZWR84axyX/81NCSEpdaclrN2MVeAKgAysF5cU01IbewGdCqmec
         P5dSdKBL5ZyAETqd90xa7SfrS6KBY/Xe8uIaoH4wHj1iu6WGG5w0AeWJtAhYE7rAU+IL
         bvAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706979276; x=1707584076;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vyFysKI+ulqGIrIVYWeP6alGWB5geZ7uKPOowV05Tlo=;
        b=qDSbVuHLpAx8pt7KocA6k61J2PImH3nLHTamF/txgAPoD2+n+iugO6H04ekNSw4aOs
         +QQUn35s2JPJIPxCLc15C2lwJoPLhAg3UYFtrI7QMqI94kiiPb/JhzZVMu950OYxjcPB
         BY0Jzg6nJZXj86wweipoQziP21Y6TY4d1qrjoHkfn4Tf39jYFPeXaGyXx2yNUuuI4Ek3
         4Je77RCnnlFeuQWkORid+gCLkewvS651snaT3EpQppTT/1IaQmWymkieOrO1ogY/2mDK
         IJ9ES1ZeFo1gY7/slxSsQ7ueENtQBXQWA2UoKXmUBujpI+tKCHbzi2OVjIx2j8BW4IAj
         Dy8g==
X-Gm-Message-State: AOJu0YwviLZaULzCbL/zMyGlbOHwbZcwXawqk5zVItOrIFP0M9eAWi2n
	1KOFQ7DsvJKVRvIkCBVicdoUOAGVETkG4bTJ+7piVM5wgoF6OV7BxlgXP+oo3Eg=
X-Google-Smtp-Source: AGHT+IF1aACYQI7zwb4q5hLiUZpptfXorBFS4iS5gGCHnkIEhvZqaIY+gUX6CxiigB4ll3DqgkpL/w==
X-Received: by 2002:a05:6e02:1d01:b0:363:ac17:f529 with SMTP id i1-20020a056e021d0100b00363ac17f529mr8191065ila.9.1706979276564;
        Sat, 03 Feb 2024 08:54:36 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVljTFGqHUSDda9IQphGIjLtMyFUmJsD5/fnOAFZYp2KpiC41NPfYVmEJNncZEAjdeLOrMUzdpOV5TbIlRuJLdiUGYnrmJbe41q13QCeCPiB4j+CHYs8WDll/NAuhl3pkt3eXzSWivXd/aXcCDCFBeeLXBvU9kyEhEqZZ/eUrewxxe2CwctMrTQYkJRL0xNw2AK3RX4xAeRXReeeWiCLNTAonyxyEAH4iiwBktEmXvbCu6eh58loDAY78XJsgrBp0gxfxxSB3KpbxvbznhG6ugQy0RHkFGg8ADrXOhxL7TPQBSRu2IqAyPopNRGXlwlzsOwD0Hg4RD8Ln2fjUD7uNk368Z1ZtaOuXnh/Z/g/W1hEnPiFUzLtP57Hl+G68yJ9OmYP5X0GGiMfmxdXJ3aa6YX+YTrhkgbUnjIPe4tBXyaNp2UN+qUZi8bGhE9ah9VRB6zKxAdunomFwGVngvOAwa5B9Dx2PILpUY0bfyN/ir6lzJCrsuyXO1o8F5T9S1cfriObbMiEPNHZa0qZ2okO/1w9JJj2sJ2sim4jLAsTOFDq+e/qxSfM9C6RI0bJImP57JqQg1G7O2wzDofYy+mf0ZuTCNYTHnAOIbqeAqvy896QqFaulKzd9yWq8IR99RiUFkRL0gJHob+80GOrvW5AJiQWS62k5Mtbh3O7ckOQfNveRcTw/E7XU5SouMLkcvsAdO5ePF12rv1Pzj3rLeMcHfyYgaWxiGs0i+IubvfyBABcO6xRt7LEHpYJijivKUpwW7juAGu939vJs0Fr/ebqBENphxakW6KwZYGtPja8EAxdRr9fVlrzgckTLX/szX2NxeyohtcmqIoPvt2vp1ld/eL258lQbGt3DiDGzr5ALeTbchKxeNt8vqIXl2zrSO9E6OcB+md7JB40W5GI9ByeKZI9AiA5d3NXhDNU81E7wOZt8PjCKtoWtF84pbIkA+2cKoD0g
 3XwtNaf3IbP/ifREnAcq+5U3JXWrBWvuZg4Lm5VzSB+3EXvlL8OCnXdfpE5mp2peJ6R+cYt7c7baJLe25xPG0v4H8XAwA/pNVH1YuvC8oPK7Snx4QC/qXMw7M5l1WQN55hX+TVd5z6XkZX6KnyRHUiSMPvb17dSTk7B3F7ldYrcx+JrSkuAmx2OMjXShCBwUA2xbCQGwRrMBEp833JC+DPrJ1ZRzus5Q==
Received: from aford-System-Version.lan ([2601:447:d002:5be:d9b2:bb4f:5531:6aa9])
        by smtp.gmail.com with ESMTPSA id t30-20020a05663836de00b00470b29b82b1sm1086256jau.154.2024.02.03.08.54.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Feb 2024 08:54:32 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	alexander.stein@ew.tq-group.com,
	frieder.schrempf@kontron.de,
	Adam Ford <aford173@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH V8 12/12] arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module
Date: Sat,  3 Feb 2024 10:52:52 -0600
Message-ID: <20240203165307.7806-13-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_165441_688277_B8C3FC12 
X-CRM114-Status: UNSURE (   8.57  )
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

The i.MX8M Plus has support for an HDMI transmitter.  The
video is genereated by lcdif3, routed to the hdmi parallel
video interface, then fed to a DW HDMI bridge to support
up to 4K video output.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e6cf3e5d63c3..3e33825f0ed7 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -880,6 +880,7 @@ CONFIG_DRM_ANALOGIX_ANX7625=m
 CONFIG_DRM_I2C_ADV7511=m
 CONFIG_DRM_I2C_ADV7511_AUDIO=y
 CONFIG_DRM_CDNS_MHDP8546=m
+CONFIG_DRM_IMX8MP_DW_HDMI_BRIDGE=m
 CONFIG_DRM_DW_HDMI_AHB_AUDIO=m
 CONFIG_DRM_DW_HDMI_CEC=m
 CONFIG_DRM_IMX_DCSS=m
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
