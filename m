Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3593ECD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 11:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73oi1lN5bnikhbKHl+I8ovDN542DpT0UB5gCat7kiGc=; b=bmvyO7LZtkHTr5
	4Gh8umpRRKjzx36Iraz497eNDy95x6HGND8q0kMHI8JO11HD+QmynNA8TcAal4Q4YBTvaHVqxcSQA
	1/9bJqctECWcaydcEPw/vMlGgI7NydTT5bdSP8z7trRxqiK5dbCYo5q5/JyX0OekuozJdbYKrffv3
	AJOmcjDc/gNCWMSn/RVewXgIfKwM4uWS5TJHZRSDQUCLb65Aoxzn86vIbyQwmrxihMrTnlqPsnYJu
	2EOheUi32ISqeit4l9Yml/kZh+RWOW7P1z8xxtWWoI2vqBYXVLkomU8F/P8JrdVZifJ0cQEY4kX6T
	z9YCnzTg6gKp8LCMGxVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGpn-00000007UwE-3dSP;
	Wed, 10 Jun 2026 11:10:59 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGpl-00000007UvZ-3tTI
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 11:10:59 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-c8584e80d59so2621466a12.2
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 04:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781089857; x=1781694657; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tPG5xL6X64inzSZqvGNNgIEqvH99YJwMXuPIgK1PxVY=;
        b=ljklC1ke963zh8RHAw7/C9YV4o22cjRhpRiAtSrEXU89N70sdFlLo0lqG/+N20io5O
         JlT4W0hbbvo7dU55VGt2GnQlVcUHgTeoxt+XwClwjS804Omw/vZIlv7VZ1g+s9lxsn3q
         bGReh+bG642qmnapeZnGsVCLYXoD6HQ3rHuHuIFkM+QQYbfBntDUN7nzjgm+bfm9nt1k
         j7Lu/dW9OJwUsgQk+wu/BePJh3Mv4wyCN4MeF5/TU5YsrCma4wpAlCnjDEDGRqLQyDlt
         MFhnNf9bTMXJSJnX6d5Cw5EVDwbdM/fk8lSG8PMCjPrsI8NsbMUMLPum3doLsOBC7ss4
         F6bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781089857; x=1781694657;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tPG5xL6X64inzSZqvGNNgIEqvH99YJwMXuPIgK1PxVY=;
        b=EewiHKXG1taMCReSh57fnqh+Zf6vEbDNu0s80PGyBMXUUcdOyAtdEDY4oSF3E9/D2V
         Fw+EMTiXJ/dBwrMMmuVzvIHk6BBF1WcaNYoCQ/hfLN4O07GT1yCDfQkGNqfKoe0i3gZj
         l+HGM0IVsWJUIOKEygmWpzj32y8qv11X8EHsT0T+XaW28ksIpzqJjS39zRqoyOVaBBKc
         jwdhA0Qcsnk0b0HqGw/QgBthm6Y+2Cxlsv9fbPKx8STLjEjkt/0QVGNcziU87ubyBIzi
         0zcVbkDtMpxnhycFvky1PVzNRR7lO6RLdS5XX8rjuYdprTObDUdn++R2bGJPyewEqlqp
         A10w==
X-Forwarded-Encrypted: i=1; AFNElJ+mEjL2692VNYEGENd1QQiS9qlxZb5pBAYJofpVlMgKWRMN1FwOsH86KmjbKZ10Bbvk//WWcHe6s9Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfXPhFUf3yiCI3m0cFXsgW8no4VedgTCNkSBtyxtg8tZS0fS36
	C6Zz1PtrZrfCkhC2HZltAy3vdlzC5/9l8KUprDJxrgjALEdfEZe7Hb/L
X-Gm-Gg: Acq92OEj1r0FK1Jrr+CdGclcZg4QdKXYfgzt40gD+mCzMp8OfPQGi3ZrfmrrkTtzD2+
	dnmCSZbgEsR5ZzHmRXgkI/rKN3BL3hDxQSFdXTB/7qGOe/lqjbl++bYAW+SiDctfhWcqX3dyUmG
	5yEykXja1Eg94aQviT8bhbjZ9BQ167iyHHUD6SDB7cbUWa1ojHxnaITZ6Zr5pJ+z3qbZDHW2b73
	xDro5LjKtxDYhdKOiRldrQPWV9Jdbka4bWNB2JNbok3nrJWO0Co3/pffAgn1L+TASNnwCkZtVTW
	baz0Syci30HwbdBiK3mQ/UMpFZDMn7R5kxRKLVa0Omtvb+AeQTc0RMIwYRvhctTZcLfCMQReuce
	9H/zEIuTUOMzXJVDV2W8dXsVdSDYdIf3yS6rGO1erRarT2aZhvf2X1U+D49Lrmb+czyl7gSlPsc
	9TXXSgDaJvjJ/rGacV8kViFjZ7cA+wmgcZMg/dymgw+vpscMVJ
X-Received: by 2002:a17:902:ecc3:b0:2b7:aa20:3c61 with SMTP id d9443c01a7336-2c1e8339808mr278966455ad.33.1781089857057;
        Wed, 10 Jun 2026 04:10:57 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:4111:52c8:138e:8096:a8df:e68b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d37esm317175205ad.9.2026.06.10.04.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 04:10:56 -0700 (PDT)
From: Ramshouriesh <rshouriesh@gmail.com>
Date: Wed, 10 Jun 2026 16:39:29 +0530
Subject: [PATCH 4/9] MAINTAINERS: add entry for the Himax HM1092 sensor
 driver
MIME-Version: 1.0
Message-Id: <20260610-a14-himax-hm1092-v1-4-0c9907da47ed@gmail.com>
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
In-Reply-To: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Aleksandrs Vinarskis <alex@vinarskis.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-phy@lists.infradead.org, Ramshouriesh <rshouriesh@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=822; i=rshouriesh@gmail.com;
 h=from:subject:message-id; bh=XHn7KPrJ2p0ewsN97d6TWFtfPpubwutN2aH4bFYak88=;
 b=owEBbQKS/ZANAwAKARWVil4RHAXeAcsmYgBqKUYOY+2bxqPX1ojdxk+vvzgmcLZnSyOoaAYMQ
 HpRDlIdPFCJAjMEAAEKAB0WIQS/0QuzNKVfvUNlNAkVlYpeERwF3gUCailGDgAKCRAVlYpeERwF
 3qDsEACjzb9x/8nckfrFGo0m5UCdxAiUwRrnwyY3IU+svHoFZIYklIViyHgK99TWKEme6Rzj+Tl
 7hCc8VP8aPvNBTa4f4VbAFPTboeLZaJ3aUk025O6s48y0w1M3gM4DCE64PaejgoRkMosAvJB+tA
 DSpV2dvKVAcHscHQ1hIJnBr4YHzyYDAlcDi2XSgmYTQhy24owgngdMiIjULBZo6pqyrGxHI2PC9
 Yzlwba0LHtLgBR/aRUSbSqAZVzbnFxIz06bdsEXcl4MT/lsT+iQ5S+C04vOn8tnGJqmlMPcVQr2
 VAn6ZlyxG5qklxons9I2R6fMXzxjyT8IGpw31An4ix2W0rEf28e191Q11toJgcDYuRCA9nULjNd
 r4lERaJ3ELlOg2KPmOLh9eEbf/w7pmo5lxCSQe2N6qkzxu2iA2lA+HNFp6KzjmOl6rCqJBkkXo1
 nmvkLdCoAU1Saag/vz4OX6Sek5ayCX+Fji/GEaMsYdsmfH03mLExJoyvcoMxMN7WJMXzG0Dd/Q9
 g2y83UwvQ13A20GKRcxiS6ImZXIaoU9EP+BRevhPxlJt7V5OMHlF58/1rBoiT/wPbd+YbESwQUx
 f8MTtEpRj9WD+Jms4Y2wSSShDOln/Z7BhsL75NMHMg4hWWd2JssyT8LXZViHyFv8s+TrUsCC68f
 yHhNgvuRKASw2Ag==
X-Developer-Key: i=rshouriesh@gmail.com; a=openpgp;
 fpr=BFD10BB334A55FBD4365340915958A5E111C05DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_041057_975435_5EB6D19B 
X-CRM114-Status: UNSURE (   8.62  )
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

Add a MAINTAINERS entry covering the Himax HM1092 NIR sensor driver and
its DT binding.

Signed-off-by: Ramshouriesh <rshouriesh@gmail.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index dadc54fe2bc8..ece71732e6dd 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11643,6 +11643,14 @@ L:	linux-kernel@vger.kernel.org
 S:	Maintained
 F:	drivers/misc/hisi_hikey_usb.c
 
+HIMAX HM1092 SENSOR DRIVER
+M:	Ramshouriesh <rshouriesh@gmail.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/i2c/himax,hm1092.yaml
+F:	drivers/media/i2c/hm1092.c
+F:	drivers/media/i2c/hm1092_regs.h
+
 HIMAX HX83112B TOUCHSCREEN SUPPORT
 M:	Job Noorman <job@noorman.info>
 L:	linux-input@vger.kernel.org

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
