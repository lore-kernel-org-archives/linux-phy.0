Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49E7FC6FA93
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 22:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwRtdAlLLrJEugpTizE8oTC/egCEL9ba+dgqPuS9khc=; b=M3BXsYoCdIVoCp
	47ZjGOp+4lDrtWIikkWSLFG6G23EPajmrZGLjq1zZSr7+XcoAwMV0tzdkEPA9Ck6cwKuxCHM2mQtJ
	wY/vMkK7ciRteKB2VlSX02VXwOGclHOWtYt3VHFmmySFubxXbpLpXdA8UWJ+aQgvUHbkcv/7UXsPW
	AOGEblVeJv9QzAdZO0AyR2iTgqU4ulMpu4wkB5Za1rf/t/Tw1+E7uBuI8oj1+ETssMLAuFJ8Q73qr
	6qEgKuLJJaPnnV/hV3ojUWxqm6R5cN7K24FvJ4oLKOXQ05M1crt0EF5jZd0E7d87s8YvznOyKwdjm
	FmUbKY0vZbigABD6w29A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oalxr-007QMc-NW; Tue, 20 Sep 2022 22:43:39 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oalxo-007QKo-SV
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 22:43:38 +0000
Received: by mail-io1-xd2b.google.com with SMTP id q83so3626126iod.7
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 15:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=7xsEMjteUIRYdHjfsuLZY+0Sg1b2m+N60SxgczV6reU=;
        b=l6v1Z+GNYF63ivSVS56CRei7tIxROuPjdYd1VsP1VI2dU1K9slSd3CfjTQHbcCrDh2
         L/VC4wqAICo7M+Y8+sKDpEn8d45/IAummtm3+j1+7EEnl643GoGdRGKUhct3U6PYNAt9
         nUxhZ1LMYXpm6S92EC2v3Cy767FzMXh5YLecf+nNQHGe7IzykaW1vuHYOXAGM3581oUl
         6wqjT/31gwptkUEIzOGqE1a0NpnhBmV4/Iw0plb+D0XAHjG4NJX2S2KX6D+IG+75caCq
         tS2JXu86FNndfO2wCkjl18kNOrTi1xoOCUbptuvNn6pUq0RnhUnTAcepn4SLc4MdxWBj
         UnBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=7xsEMjteUIRYdHjfsuLZY+0Sg1b2m+N60SxgczV6reU=;
        b=kJ957Fv/BeL4MkaNV/dvvqSHTA5/PzDjeT4m03Dya0TDcsnsB5A3MSTv4kptReO7vO
         8q33WTORl++6G22YB+XVpVqE80A+n/8MFhUGrUDbAi8Y5iZQEDWSlnKK2XRmYamDHJ7R
         pMPP8K0TM4Yg4NT4CMazLPAMO1ug0/cny9D3IzSlkJksiCK83QUcHX7Xk6BcvRXzBc5z
         NpGWO79tdC18gk08rzyDCkL20jMQLMK/lZnRUNgVBHhMQutHDplTPICla0lUzn30dZe+
         Oy3Yoip+gU0ufx4OKWn5AsViofSH+UN0aXFtNvEE+DijMB+Q9/bcuXa51ckz+sgA2fzY
         bK1A==
X-Gm-Message-State: ACrzQf2DdGrmuLDae9vowwEf3j1bQEM5dDgyb746aCaqYDWxnmJEffHq
	zOVRe33aYnqMU+wYCiQJQ+Q=
X-Google-Smtp-Source: AMsMyM7unFkrTrNS+6qbuaDDl4WIJnO3Ixz7/PW2/OS0pNg9dEBPssaoow1zBR4bj2kpirKTJ4LgPg==
X-Received: by 2002:a05:6638:1606:b0:35a:5472:fa1b with SMTP id x6-20020a056638160600b0035a5472fa1bmr11423321jas.241.1663713816433;
        Tue, 20 Sep 2022 15:43:36 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::a533])
        by smtp.gmail.com with UTF8SMTPSA id d38-20020a0285a9000000b003469c4d60fesm407468jai.27.2022.09.20.15.43.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 15:43:36 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 3/3] usb: dwc3: qcom: add sdm670 compatible
Date: Tue, 20 Sep 2022 18:43:20 -0400
Message-Id: <20220920224320.152127-4-mailingradian@gmail.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920224320.152127-1-mailingradian@gmail.com>
References: <20220920224320.152127-1-mailingradian@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_154336_941084_D5B9C3AC 
X-CRM114-Status: UNSURE (   9.86  )
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

The Snapdragon 670 has DWC3 USB support. Add a compatible for device tree
semantics.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 drivers/usb/dwc3/dwc3-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
index 9a94b1ab8f7a..34b70c3c2f70 100644
--- a/drivers/usb/dwc3/dwc3-qcom.c
+++ b/drivers/usb/dwc3/dwc3-qcom.c
@@ -1010,6 +1010,7 @@ static const struct of_device_id dwc3_qcom_of_match[] = {
 	{ .compatible = "qcom,msm8996-dwc3" },
 	{ .compatible = "qcom,msm8998-dwc3" },
 	{ .compatible = "qcom,sdm660-dwc3" },
+	{ .compatible = "qcom,sdm670-dwc3" },
 	{ .compatible = "qcom,sdm845-dwc3" },
 	{ }
 };
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
