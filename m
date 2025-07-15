Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67FF4C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 07:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXnrOI5XQZjBvVQBPa1C9WRv3ce05TpsWiKKD6EgoYY=; b=OgCyUNP8hAeW5s
	oBFTUUAnUDwSeJw0VH0v2JHmo7uENL5wiT+JIvl8bTuPYKEWO0fwT4a5senTg6UFpFzjLZ7RsW6QT
	dJXFTlxyFD2GUrObsHcY5smHnI+NqbAQymG8kqEUK7HZSoonCAyEbA02mbNp5auaSKNFg1yLTXixP
	J8+ZAXA3pXyXu/FzTMgHrOPpGtSd+HbS1w38LT5lqh4efWeHj5mNschUQnbDqF7c33apR3LsurrpY
	uWiiPe3qwa5YPpIDxVUgDXcZF57g0w2vvp8oS0Rf8ldNsiSJXMVTe65mv88zsDNYLQGKN+xUQRCkT
	vIW6N3ExsmkEmos9LPpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubaBT-00000004Mic-3dVv;
	Tue, 15 Jul 2025 07:34:39 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uba6r-00000004LkQ-370i
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 07:29:55 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-45610582d07so16013955e9.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 00:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752564592; x=1753169392; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=igRKmJztcKVpdUX+y9lchuje3E9fuLqSjyB5RDorqw4=;
        b=MVu2wxj0hquKgM/4XAXmeTDQ6k01YYB47ZdcdeH9q5h/McoxpO9rzn9oskm5iZu3FF
         uFW4/iLqlsqg+6gks9kYbJfZ0VA8EXKEDJmabBusEg+a4wz5IHYlJqwbzQFn/08Qp60q
         AcA9yyp+XqgZWJz7WVXZ15D1k5PsCHRQBCQryDoH+CS7DZ0FEOgrNXAUMbftRuN2I3vE
         g3gEO7ZE9RzC8HTn1vgfC0touXgNEXRN1R7XXro585lE/qnGbjE0zFyWbGtbx3QG8jJx
         D3v55BrDISdyiw1hJKzf3ka6fzeYf8eYet0lY/huAIfNr3rUW+nob0ifTKZ3HWcXaOeJ
         V81g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752564592; x=1753169392;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=igRKmJztcKVpdUX+y9lchuje3E9fuLqSjyB5RDorqw4=;
        b=Dr26A75p7ry9y19eGdcnF1dCxdN+Fdic6hE4Vy7L1N67+LzzmBFu6Ny8t94VFOibfX
         164cQxrFl/Imnu0/pYb/hV9cthyluWG8uT3O6ma1uJJYGkhpdCxJcGxQGuw+1Cqciiwa
         WFF+wAfCU/FAGvmcfmrsaLLDRvi/pIO0CdRJBgseuajTmXvFMSngUMp2xpCKhR8gwmwD
         oxmpOM9Vqgvqyo6j7zeF9VAPLrYHruzNpGln9+5TFfAkszS2v630NVs+c3SPTgLH+Ne5
         l405+htimYytRjwGm2lO6lNEQxueWRgFvc5TehL9Sr55Tkv6zMWRFk7fPCALUo5vf7sc
         zTbA==
X-Forwarded-Encrypted: i=1; AJvYcCWPe8+1Z6fD9QRkiaxyJ80qhVNP4p0XJqrLx7sg+G5/I1Zi9hR+7uhJxpNqzdt5m/nhQaoNGjpLB58=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5/Rnq790WMydjThUm0Vgbqc0zCVxUXbY8d/zweeW6OsVSZ/FJ
	CmEXNp6Abs0DVw7ZRecFtCDE+dtf3VLvKs5LaYFaHTcrMBoKwlmwT5BWhKrx0EcVFRo=
X-Gm-Gg: ASbGncvkl6PB5UZCaGkEJGCMEzfcD+IJj6wZMQjnl+kFiSkOz9cdDmPAcHw2yH8HDqY
	ukrkZVk+qhfSGuCf2phrO3gtstWFEBfg7ihIfO8Xc1ta53Lnl+LFcU9hNjd2YkHr3k64uNALqws
	SFJtQL1S+X3taJ1ANaPer07LSsXn4+Y0XxDxr0cJJSUYeogeIwBWyfWNNK7uAVwgNw/DfxNly1q
	EVUSTKvDI8hN9LbgosyXQPj+isE28UYvWWFZ9a1Ai1mjLjdXNY+OK9qwBdnlvtPIOz8PatmwYtH
	tddsm1s0YTupIZWSGxbCgKC8ViDnTPTvoHu2x7/3A+514m9Hd7Gt/GZpvgUsM1oFw0G57ZW8QRc
	PixM2aIFfRFDGrKPqT8D5hn3JSIyBBclGDKYbD+jE732aFOJ6+DWd7FB3
X-Google-Smtp-Source: AGHT+IEOswgcSDktjdBdtB5rnegG/4cAp7K55K7A8UnA371xrsFvPIVkAf0I9oWpxgphOBT3WowzKg==
X-Received: by 2002:a05:600c:8714:b0:456:12ad:ec30 with SMTP id 5b1f17b1804b1-45612adef9amr76669595e9.13.1752564592119;
        Tue, 15 Jul 2025 00:29:52 -0700 (PDT)
Received: from otso.local (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-455f8fc5a01sm106703395e9.32.2025.07.15.00.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 00:29:51 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 15 Jul 2025 09:29:36 +0200
Subject: [PATCH v3 3/4] phy: qcom: phy-qcom-snps-eusb2: Add missing write
 from init sequence
MIME-Version: 1.0
Message-Id: <20250715-sm7635-eusb-phy-v3-3-6c3224085eb6@fairphone.com>
References: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
In-Reply-To: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752564584; l=1183;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=wYiuInhT/0IBi5aTMYTxCqi+FJtCIlWWKNx/cq1PoSw=;
 b=Yd5Rujjbob3CnCPjRrUIgB1geUfHyw5dfBFoS8gbMx739dw0yhhLnWpk15eAQh/7MCWe03jQN
 M+taRvi0PcPCziUhIAqZCZ+WtyBcBNQO8ZKR4WMbJL8aW+96LRZGqNk
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_002953_808937_381DB2F6 
X-CRM114-Status: UNSURE (   9.45  )
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

As per a commit from Qualcomm's downstream 6.1 kernel[0], the init
sequence is missing setting the CMN_CTRL_OVERRIDE_EN bit back to 0 at
the end, as per the 'latest' HPG revision (as of November 2023).

[0] https://git.codelinaro.org/clo/la/kernel/qcom/-/commit/b77774a89e3fda3246e09dd39e16e2ab43cd1329

Fixes: 80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/phy-snps-eusb2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index b73a1d7e57b32cfdfbe314ab938ec54746ed53be..e232b8b4d29100b8fee9e913e2124788af09f2aa 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -437,6 +437,9 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_HS_PHY_CTRL2,
 				    USB2_SUSPEND_N_SEL, 0);
 
+	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_CFG0,
+				    CMN_CTRL_OVERRIDE_EN, 0);
+
 	return 0;
 }
 

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
