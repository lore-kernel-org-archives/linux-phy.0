Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5970C7EE33
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 11:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcSsMk4+/HF5tVZSoAFW+Sfg6rv8y3REIUOsFrD9MuQ=; b=IYZAdZGYYYGGa2
	dAJaYDvJ51cKka3rVWzsZPQYLqBRgSliaZ1Q5iFxQ5AAlpqrEi5wqRXdSIVM1I69K/bnHGIS5UGOk
	TxehEb9O6zW4+alXmtJYm7yje+q9+qHWVSeJ0PGKsJjS6SGeq/G+gW9+JMLBEdnR4MPZWIrjVRK6D
	dUx6xAUBHU9UIpGR/7/TBBQa9Nx2bgJh+SfEWMmZ0BAbCH1Oekop/tdB6SnQA95YFoFn+8h56uLg/
	w+ldK8St9w8v+5yHi3k6H2vUKn+g0/X/Pekz3B3MFMkBvs0DH/freVvAqIWYPWO+ggVxKl5jrU8Vd
	Wb14YAYoLmVbndu82q5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUOEJ-00000008SRl-1r7k;
	Wed, 25 Jun 2025 11:23:51 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDM-000000085ge-26kc
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:14:45 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-608acb0a27fso9734017a12.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 02:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842883; x=1751447683; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ezrrvemh3BSb8JW/T0pKm8QnZFPlbno9UW9Wh0XmVYM=;
        b=HjhHNkOV+CQ9FCZU98R35P2c2PI8sk1FfGMDcMVBGwsT2/w42ohGs3UZWzQvT9gpKY
         HFok0JZsti8J6IqoAaHjWCpOl7AfAhX22DC9EzKzp4maybblxNVq7EshKu5s2z9bBMOz
         Vr5Dz/BWRylolSfq3je0skx99Gx3ETOJR2Yb/wZf6qtlJ2J3v/rBc8TK4BEhbHh5f0BQ
         jiIDA1cR6QsVVw+XeQR7TEL5HsWwc8cAvGBTemNqG62pT8HChFy/MSSrgUiRWHr0Dwfq
         jqbcWUkvFRS7ZCNFUO0nNwEOLJcibzeqLUIx/huQ72JpVwMewfEyM2MjIdrHSqzpJIDn
         +VUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842883; x=1751447683;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ezrrvemh3BSb8JW/T0pKm8QnZFPlbno9UW9Wh0XmVYM=;
        b=ZaiGpA8BkA9sHbXiZJqaFSOMcFQfNuZgtwR0GjKFu2BqCXQC0QuFG9W5iZSRfsEvL9
         VCSPnenV029FUDgfeTxu3oaJ4etggYnAVeaEkR+/USlf4Mp5A3x3imtEc+vQrxXqIn+b
         9MTgyjfL165tGFjj7A0pY10ox61y6FHRu+C7jjGpvpjRLi8DqFGQ1Q708hOSJLfVPyzR
         uD0uTvOGgorBaIkxLgxqqnRzOnV2ZklBox1y4skxmAftee4N/vrQUMm15z3VN5Vr7fjp
         8ZP/9wvhnulercmBvE++73LdcDnwdMKzMTGnqyvCAw7z+ooIq/wVdQepb5OLuGZQYYZG
         3Anw==
X-Forwarded-Encrypted: i=1; AJvYcCVGC+kriYSz2ikLMT8g8ZBMlzzNUcFxpIuqm089/zSXn9hSLnGVeeGhoMz3gPO9wnIOm3toP0PajrY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZLXHa3cGr2l7iF1f2MCowlDnhQS2sM00KJtpQEZgocyeBmZGb
	IE0xOGzk/gZXJHFCI4foB9j18Fn3JcL5l6ISK0rSQUFcn/ntiFFhb1Dh4DqNsWZKxbNPBAd06Z0
	o0gIU
X-Gm-Gg: ASbGncsidtnkJD0ZO4PHRaUEc6756kl3fC33bIZ7B0G1e98hcf4ryPuxjEgXTtUal16
	TUGUHckqDAs6v3X8w2StvtNWbImCEz21bOmgSLRH7vHqdMX2fBGy1pa7kVRNULhaPrRpHEz+sTN
	Xg4b6TYhoX2rtAEpgo1ZlzM/cF/Fn4xgAEqWWehZGvoc0jsFvT/Bw2tMieBnE+av7CS5CPs971v
	Nwk1HmeBbFkffMLVMGOZIE5L/bTjemJd4OB82YbC/QgsKn+IsOggxdoRrjAtvnrlBbTU1JSYUfT
	uIon+sr2Q1J/0w6gn7n5gzdKuOcuiMI+nRHAtYxL7CjlxjFdaVL/lJYoSvbmb6wi3oEXe4eszGp
	u/IwILlzBfg/RzHbIhJNgYg1GBo309Gwl
X-Google-Smtp-Source: AGHT+IGIywmz9c5XNOpnohiRqMmd+RNf51s0QULoylL6obp0kqvk2eHNYG2CNGxRWX+GPIx78Dn6iw==
X-Received: by 2002:a17:907:3e0e:b0:ae0:c7b4:b797 with SMTP id a640c23a62f3a-ae0c7b4b8e3mr100658766b.45.1750842882736;
        Wed, 25 Jun 2025 02:14:42 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054083c95sm1021480166b.91.2025.06.25.02.14.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:14:42 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:32 +0200
Subject: [PATCH 4/4] phy: qcom: phy-qcom-snps-eusb2: Add extra register
 write for SM7635
MIME-Version: 1.0
Message-Id: <20250625-sm7635-eusb-phy-v1-4-94d76e0667c1@fairphone.com>
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842877; l=1373;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=+GSUprlWx6WJefoJvkEn+TwLdVvC5fox0gg5Y+LwfHw=;
 b=8aIZ42DeUTJeCukpZfv88iXrxjGwzYcqNfO5sNCK9ORjM8K3L17YRcY5g2wj29GmvQjrgUBYa
 BV2F3Lnv+80BG6IJxhPKu4aj13he04SrDoqxPjnggGeb9t40K8Jf55v
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_021444_545119_D77ADE5E 
X-CRM114-Status: UNSURE (   9.75  )
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

As per the downstream devicetree for SM7635, add a register write for
QCOM_USB_PHY_CFG_CTRL_1 as per the "eUSB2 HPG version 1.0.2 update".

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
The downstream driver supports an arbitrary extra init sequence via
qcom,param-override-seq.

volcano-usb.dtsi has the following which is implemented in this patch:

    /* eUSB2 HPG version 1.0.2 update */
    qcom,param-override-seq =
            <0x00 0x58>;
---
 drivers/phy/phy-snps-eusb2.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index e232b8b4d29100b8fee9e913e2124788af09f2aa..6122fc797c7fd3011936edc3ff4dafe6a58e6583 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -420,6 +420,12 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 	/* set default parameters */
 	qcom_eusb2_default_parameters(phy);
 
+	if (of_device_is_compatible(p->dev.of_node, "qcom,sm7635-snps-eusb2-phy")) {
+		/* eUSB2 HPG version 1.0.2 update */
+		writel_relaxed(0x0, phy->base + QCOM_USB_PHY_CFG_CTRL_1);
+		readl_relaxed(phy->base + QCOM_USB_PHY_CFG_CTRL_1);
+	}
+
 	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_HS_PHY_CTRL2,
 				    USB2_SUSPEND_N_SEL | USB2_SUSPEND_N,
 				    USB2_SUSPEND_N_SEL | USB2_SUSPEND_N);

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
