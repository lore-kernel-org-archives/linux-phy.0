Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ECE2FA3743
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 18:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zucbpHtlVU2WBc0X/3cJbcJ7X4dAhOlPVZUUcycVpQ=; b=slnAaMwMWU7R1/
	qLeJvAvMFrylHjFIhfd1nx3vjNrwMc47LT8pci1HopcjjEh/7cPbmO98yTP+NSz+vt2w+gz1ySq+3
	1S3egJCa4toVRe3xyIdCRQdgXkRlnMKrG7SaEFUXjgSMAbLOoZG4rNma0bc+veXdmAGQBr0ct9qpP
	3v8fuYj62CP3uUxudXVVExVN0gglAT8KBEjURED/Tdcc9ibSW37IGsyuhYpm3XxgGEH8+PObA/TKY
	+MNPeNhWF+Tb3p45I571bVsuOdFvOyQa9IKVj9UYseCQQ2mLKWFW2y+pKbVoZvfk2+GaDRtEJe6Yi
	NJipZrxBw8npinVnBPYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ8I-00Dab1-0q; Mon, 31 Oct 2022 18:03:34 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ8F-00DaZx-Ny
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 18:03:32 +0000
Received: by mail-pf1-x436.google.com with SMTP id 17so7091380pfv.4
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 11:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=57hrdpD9V7ZTE8+VIgUybXatzD5HV6GvuzYxuyw9ASk=;
        b=CJZOurchjGJl1snA1fXRSkkVYNfUPtkHRC6arQrhiLHCCHw1eBR+6Q5F0PorDK01ZP
         1Hkzf0fYrm4AGRLhb/l3wfkKVNBgGXpBZz3z3lyNlxt/UHoaR6ON+NVV0OQdlT6f2Yy8
         rPxHeFts4yxmH20dB/LYHEkv1J/BWTk2zsRd48gC341JSYFCkiRixJFJ2HTJAnrC6piJ
         NPg8p6A4d8au8odxHziT895HmhU9L+Oc7GlDTzKYcfTZvdYNg7aAhVRnT/7xzXgXRSdl
         bJY309odjX5XDPSjAt9ir+3anWIHWjKCv5HA/FrmD9Eq5om/RL2latgKPQmGNzOxOzR+
         a7wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=57hrdpD9V7ZTE8+VIgUybXatzD5HV6GvuzYxuyw9ASk=;
        b=cV/pJ289/ZI/ArV5OYuTM01nOvDqaD0n9UOk+sI/hCvzownAcnSSZer68TbmS2g9NR
         Wze63V2t0dXpEwGkh8MY2eCHwDA61WWYu2JBOcNCRpUuOkk+YRhX8GhXU+eJvd/D1bZc
         XIEZmy+xvXcH9EaXKXXCe6EhNiKHIzflqU9rt/EZjz74DBSKBhgWCTHIuntCJQvQ2ETF
         YL/rTIGPkWeuogD9BKZkzbILz0GLQPAgfKdZzP73oMLr5SPdk9IAJGx/8rEOM6S0T0/H
         9HFDoCHN+GuB+e4XLlg2H1B9VCBeR0h8p5ES13csEIqQ89RmqHIZs6HKA5ik73DIFlDb
         DsNQ==
X-Gm-Message-State: ACrzQf26wW89xQYxxecvlTAvUKG8O9aspTDVpStSG05YCZY5HYwl2e8R
	cE51f4S8V39ufwZ3nodZUSLR
X-Google-Smtp-Source: AMsMyM4YfrwoNrdGfiVoZCqIhrLJ40dbpww+YBMczlctY4waFMDpfmVg0qxipxfjexfRmTW2yYHGGQ==
X-Received: by 2002:a63:2d05:0:b0:460:55e3:df91 with SMTP id t5-20020a632d05000000b0046055e3df91mr13774942pgt.177.1667239410304;
        Mon, 31 Oct 2022 11:03:30 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id q14-20020a170902a3ce00b00186c6d2e7e3sm4742224plb.26.2022.10.31.11.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 11:03:29 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org,
	robh+dt@kernel.org,
	quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 07/15] arm64: dts: qcom: qrb5165-rb5: Add max-device-gear property to UFS node
Date: Mon, 31 Oct 2022 23:32:09 +0530
Message-Id: <20221031180217.32512-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_110331_804585_0514EABC 
X-CRM114-Status: UNSURE (   8.16  )
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

Add "max-device-gear" property to UFS node to specify the maximum gear
speed supported by the UFS device on the RB5 board.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index bf8077a1cf9a..3cb1f48c90f5 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1250,6 +1250,7 @@ &uart12 {
 &ufs_mem_hc {
 	status = "okay";
 
+	max-device-gear = <4>;
 	vcc-supply = <&vreg_l17a_3p0>;
 	vcc-max-microamp = <800000>;
 	vccq-supply = <&vreg_l6a_1p2>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
