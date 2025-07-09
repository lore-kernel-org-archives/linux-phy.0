Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E683C83F14
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 17:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3aFCiM/DreqXl/c7Mhnr4I6apH2kdbbYAl2t2jNDAAs=; b=tTimXctnymg3GB
	6KF5C7yf/oro1Kppa/KSG/WlyZQ5Q0TXRdKp27ftGKhdMC+2I/Jeep4sDoqoKW4ygPXEyUgTTDBgT
	bB3MhPvxqHfYyEqwRUlMXPSfRIpyJWasQKpoFmEqp9QmJbe2va1l+2ddGUcxW23ZQ+Iudzq9oH1fD
	x7BVi3ghiVGcwZXkVHaOquIUm+tFeMzP7pVeGA4hPgJVJL2igvmCenUuaGTMeabusj3u3NwjbZzxk
	eEW/O1CnFvVnyfw+SOsa9hMlKr+/3tz91mf8DkH47qOgGZmezyxvyM6yM5zN/CFQbHYDhlgZu1toj
	5Sy9hsRFBGcmFgIGw8YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZYKE-00000009P5H-0prU;
	Wed, 09 Jul 2025 17:11:18 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZWCl-0000000940O-0HiN
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 14:55:28 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-ae3c5f666bfso919912866b.3
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 07:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752072925; x=1752677725; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FqUnckrV2DHR0JIRkRD40uIY/f6Qb0J4rvTjJoaYqS8=;
        b=MAfaffWufMEc+XYKnFDgRNgMBKyntmjDEjC5/RPICxWgl50B47poAIdH8tHN1hlAoc
         PajqAQy4ru+9e2Zi0t7nc9hWmn4vIHGiJDwuq9X1Wn/INfMDTIb4Xmi6kvBx4Sph3yZn
         Oxm++BcGy4fExWXqQO1n35MAkpbeu93GlCiyApfD+I5tR+dp5kj2k6AMxmejTxDUT0yI
         2xPXFA6eK8WNGtQjHH7TRsQHaHqz1Cq2Yd90oZvKF0gA8f2xBHhH9gTIo6KFQNLrvMdS
         I9InoPr3WAgW8IpvBLeSTERaSqN3gOo+f6q1QNxNivlPO8tVmSOiseHOy6wI1hGfVySr
         fn+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752072925; x=1752677725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FqUnckrV2DHR0JIRkRD40uIY/f6Qb0J4rvTjJoaYqS8=;
        b=TNa2f2++k0E3nmpMzJa2UhSxKbK9Fsqc/qixyOy79VUvc1g11R/Z8ONR5SHgYpA62V
         ywVQKmHFT0RSzNuO8zAFECE7MyBl/uJoMo3o4urA0gUVKNjGurDjgbWAESWklPBpxuY0
         A09297xY5DfEhwSyDQWmCeD4xPC92sFKpCRLZ9Tu9KlDQZyfNccb6hm9L3mFbZrvBKQU
         050ldu4hkgkbpsXvHFxFulSqDcSjyd5TAiuq9nk7CSfTV8fUF5prGmLCJVniii2EqSyD
         Ji8+NHhMeE57lAQtYyhNBAa95/AP39LUNSCDIdhGoEF2CG5oweriUJFeGCyGPsAqgslZ
         g/0g==
X-Forwarded-Encrypted: i=1; AJvYcCWDUvIKb+bBXtMDUP9I3/AYQ1ydHirPf/wLJyzqT0v5wZP6YQhN4/xDegnu8vBI3awH9BQHrx4Nmy8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz810rK9Y/7sCtSXktYKUxhUJmBvV8kf5w8cJ3OxlLsfwE7fNXR
	/XF2GQTuJWK0kx87b2im2d37/OIhhOhxzUmd2WOSylFjU4+h/yxtbh2vQ8OX/NzvgeM=
X-Gm-Gg: ASbGncuPRFJxN9yDtQtPhmLOa22wUw6PRV4fAdXJbhIOVLqKe0ySA/+j5V6slcdlUMb
	Htyh8eAFvL6n4rBc2N4pSCL57Y55c/dyf9jqtG3rxPAaB0zR1vGLLLAd5IifLt0XtUS6tBbtv9D
	2i/vy78aP1z9Mxh9VPzd+QxvCBiQWQGpnMQtFSS3PRBt7I3rrFUsMrpcVSOd4dGtAbrguBLRNCi
	jAzr3v+Ws7QEispULXe7+/D6/+HHiGvkrAvnnHPLO0x9LBJoSWOtcs+R71wimZxKTg6wJsnuGtt
	/nR4j1wiuDB2uCisCq1Wu6TEzoC3iz0FHwOZBN4dx5eokX5HlIyY2w9uYPYbzWn3ag/LjqmBdYD
	ZZcKOJp0LVK0CxAFo/hUGHVLKJHUCG0bZXqx1ndliuuQ=
X-Google-Smtp-Source: AGHT+IHYj4k/qDDYaJjD9Pvlt5hW+aGvDzyWD8yDesgLcfq/4kuKmOi8Z6ujnsY58oHIu98v8zVcqQ==
X-Received: by 2002:a17:907:ea6:b0:ae0:c976:cc84 with SMTP id a640c23a62f3a-ae6cf6128f6mr309110666b.24.1752072925389;
        Wed, 09 Jul 2025 07:55:25 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b600ddsm1116795766b.158.2025.07.09.07.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 07:55:24 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 16:55:15 +0200
Subject: [PATCH v2 2/4] phy: qualcomm: phy-qcom-eusb2-repeater: Support
 tune-res-fsdif prop
MIME-Version: 1.0
Message-Id: <20250709-sm7635-eusb-repeater-v2-2-b6eff075c097@fairphone.com>
References: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
In-Reply-To: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752072923; l=1187;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=JjK37/7ou8Ub4yuQzbdrYu/+a8HXwLFQlJ7GCGIoSKo=;
 b=a4O39biLPv1ckqefPreNqneOFtzOmXRAtTy90P3R2Po9bjTLgvaXw8O0srrHGpicIbkBCZwtq
 GMA3OKt/wNkAXcOlHdD0WJfhA5Q0vh5eGp6Mfjp75rWf3jKut3x0cbF
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_075527_144959_A53B8873 
X-CRM114-Status: UNSURE (   8.54  )
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

Support reading the FS Differential TX Output Resistance Tuning from
devicetree and writing the register, as required on some boards.

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index d7493c2294ef23e37e484019a49ddf7b3d6a6a46..61594739e5b12706775622e1f76af6ad5d2d29bf 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -136,6 +136,9 @@ static int eusb2_repeater_init(struct phy *phy)
 	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
 		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
 
+	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
+
 	/* Wait for status OK */
 	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
 				       poll_val & RPTR_OK, 10, 5);

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
