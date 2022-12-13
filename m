Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ACC9C04FDE
	for <linux-phy@archiver.kernel.org>; Tue, 13 Dec 2022 12:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lo7lG/Cm88LCAWZTdDtnLJLEiOCxo/ecxZfqDl2kE0E=; b=uWexY3cdr1Y4zr
	UXdEVP/Bqn5+tDd+oT3EDiLkcZ4PUH2s83MXRv87jmd12D8MMedyKfZHpwaI9XqO8RtbPZOB8PVDP
	77e4zNDDSQKW56ND924fYse55zNxhw3LaWGljuqOOJxMILEK6PPm4B4aKxbcacvy7QL2H9x+t3MQt
	LGxfne1Z0qqBE4qvXFuDR8A5gd1FAS8npypCKxpbrVEZ/e53PTZrx+I/fKN0EiZ50c9hMoWoXDkpd
	T2ZMYWLbAX5vYTb5Fo9Z5GrvCtgCNN5p4dVMDfLw0rggu+5oTpxntnIFLDH3ne5gGsyBf4ZtcqRQH
	vW0vKmptkWmsrAFoOgFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54PG-00H9Sm-NG; Tue, 13 Dec 2022 12:29:10 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p54PE-00H9Mh-0q
	for linux-phy@lists.infradead.org; Tue, 13 Dec 2022 12:29:09 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 62so10290881pgb.13
        for <linux-phy@lists.infradead.org>; Tue, 13 Dec 2022 04:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6B2uCXhwS8UcOxHSVMu84gj0hLuyx0nL5YZCYMXlNbI=;
        b=GxvydUusQloT11Q4kIxBsIZkyi+0z3i9DcsvxchXOG9AMb18+uEjdmO/sM6vCWz9TP
         ww57Jhgx8llazHhg1dVP07lRvY6PM5+PIJqLTfF7vNhhkVyXCuQBkQ6h/Fz3CGh3URjW
         BIW3rEsTIM/Yo+usn28sAJ0jZaYAsu1OfnIm5J6qG0RS/6a7y4f33EYFtvzxYxNVFAmG
         cp3rR+msN/qGgx5JQbKrqHSRyxdmg4BIxah7HWcuP930UD/lsMa5JvU2bWc0j2Ns8zZv
         gbMvk63mH/lyniuw1Sopq277j/Kq4S1zMwE+g5Dc6hYlBLNIJbpmYvdxADpV4Ndr65KS
         bPSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6B2uCXhwS8UcOxHSVMu84gj0hLuyx0nL5YZCYMXlNbI=;
        b=tCjLo63edWVxslNQkMDekkWKUnTdGTY0OLgcFV4NhP2TVp+QgG0gzp69VItnBEENk6
         TbCTPEzaWbsbQY1/dHEGj2b9ZqW7mZFBPIMON30viDBidgaXQDQ5ov+otTvJGErWEXZI
         OYVBquMVOgnKDdfbfJk6Rxh7RbtvokpON4reYCjEn2DAmpKDfqqDFlzjzIuNpmAdZ2Jp
         fPluLCx0JRKNJleGr/N5IIoxu8uoJYp9VeS/j9pJDhFZrDtcbZEU/at6+VRyBy0/rTzn
         TA8J9DIKfdnEz2cWuaXxcR8aUNSvEpncR23yMKrr1B+WGKfI3qytscosTgqMjuGXYGeJ
         tPfQ==
X-Gm-Message-State: ANoB5pnlEF1C4f8ybZDsmBx1yc1neOirBc+ZYwhlae8TsT2LWI/xnkFH
	czj4Ng2MjjgUYzXK5DsvANn82Q==
X-Google-Smtp-Source: AA0mqf5wGzHlxevuKvZLX4cMgfWkGo5uzzVzFm6E2mKP6BYKfxRAQtuK8zx6RdswZl5YbOjEUNxqlw==
X-Received: by 2002:a05:6a00:1711:b0:576:c2f0:d6a1 with SMTP id h17-20020a056a00171100b00576c2f0d6a1mr19952530pfc.8.1670934544111;
        Tue, 13 Dec 2022 04:29:04 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c60:4bad:5c3:ab51:3d81:6264])
        by smtp.gmail.com with ESMTPSA id y10-20020aa793ca000000b0057555d35f79sm7602468pff.101.2022.12.13.04.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 04:29:03 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: vkoul@kernel.org,
	linux-phy@lists.infradead.org
Cc: shawn.guo@linaro.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	agross@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org,
	andersson@kernel.org,
	konrad.dybcio@somainline.org
Subject: [PATCH 0/3] Add Qualcomm SM6115 and SM4250 USB3 PHY support
Date: Tue, 13 Dec 2022 17:58:40 +0530
Message-Id: <20221213122843.454845-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_042908_150806_506DF6A3 
X-CRM114-Status: UNSURE (   6.74  )
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

The series adds support for USB3 PHY found on SM6115 and SM4250 SoCs.

Bhupesh Sharma (3):
  dt-bindings: phy: qcom,qmp-usb: Add SM6115 / SM4250 USB3 PHY
  phy: qcom-qmp-usb: Fix QSERDES_V3_RX_UCDR_PI_CONTROLS init val
  phy: qcom-qmp-usb: Add Qualcomm SM6115 / SM4250 USB3 PHY support

 .../devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml   | 3 +++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c                      | 5 ++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
