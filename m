Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B495FC43458
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 13:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9bn7BIbo9noMujeL7AzC+LtQEx+67/Z/N4BucP9t4U=; b=HsWE4qq+gn9yuf
	czQP3koNcsnCweiz1G8Uxl5TeK+FiS4rVrARG4DCZg7HUyR2kZHkuf6NTkXgse9BHSdwb14Cz4DX5
	y8baTcf/lTi0h8DqCZEYT3vJj2jM66DthpH4C85o7QqUvOBAbj+iMRjqQD+TH27z7CO03X6iKkv+o
	Ffc1qzb6WCP0awPPxfEiWZf7tcuKxMV0x7HCL826S9JstPffeCzuyysh1oJKrllVmhPUcv99fxxXS
	ZAyxJCf4Ras0v8uwiboa6iE/oknEKlus2KDtb3sYnFOFBtW0swhKI5T1M7JapUPwNBjxFcoR6jGz3
	LVE3lMqf9/PqBpzw8Bbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgjlJ-0000000CfUU-1qI7;
	Mon, 06 Jul 2026 13:53:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgjlG-0000000CfSc-0FzK
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 13:53:28 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666AxIHR391309
	for <linux-phy@lists.infradead.org>; Mon, 6 Jul 2026 13:53:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gh+NdjO2RmlO1SWD3vOIOXcduq0pfLcMmTUXy69Xkyc=; b=aXpKcu0Zv5LZzomM
	nyrUBYWSHt1GXQF3BFh+eV2Uj4uHwpwgoEHPEL4SfAodn5UJTY4Vb4POgqCtQBEH
	ZGX5ds9lr/bti8oShh/ssBZ/PsEN+G4ccwpK5U2RoFTD0/Lq/hFqp38jn661njeH
	vnsXy+t/BcORj/VA2VJyLfW2ZcMohRD5FcOj320rnrJWjUDgFLpV4jQMC6PocrCJ
	cVgJAiEaeRVg5PEvxv0PBy7rY+cS8lZf/La3afsCvHlR0bkJLwcjPLW/MjYBjoBA
	/I0ANUdDd68rU8TzFd3FEmwpAkUjsOkp0YU86nVFMWfNYn/KVMUN4/0RmYs9mXjA
	+Vog8Q==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f89kgs231-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 13:53:25 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-59d595bfd94so1090215e0c.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 06:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783346005; x=1783950805; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gh+NdjO2RmlO1SWD3vOIOXcduq0pfLcMmTUXy69Xkyc=;
        b=XDh02ffkcWxFJ7mUDlR6+9giQlzTYzHdKz7RucuOBRE0F0+TEYR2sCprpwAPGIpKP7
         AJzFgedDb9r+UYFYfv0P4wnLTmOHeu3zQ+DRvjBAKv0FQvP0FNda9lWpn/l+/WwBFpgb
         Dpyyj2Z9Ox+Z+aDlladhNmgdSP7Vom+8fpE42/tCA2KW4aYtB5VjGylLnutNzgtSk0hA
         qXUipAzao7CAAdzveW4VBHjcHOjYxKfqIo3PNRGLKj7tPZ6PBVcfmtAA4eH8QVgAZMm4
         MhI35O8iFihRHyyqyK3ZhJOT5oQ9t58Oajze+VaNS9kUA3VFZMnXlRXYt0da6JKmxW/K
         qvIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783346005; x=1783950805;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Gh+NdjO2RmlO1SWD3vOIOXcduq0pfLcMmTUXy69Xkyc=;
        b=aaT5x9Y0hGwsxWgJO/5REY6x6+Y8KBezXxDdXXCVioAep2veNnuH/9N/ZOoig8CDzF
         78XjR4ObdjGwrlaTIWu0qClHer/vuanq88Hxv77mRaqtSTe6Fwc5B+9oMTeqD4X1jqxb
         kyt/Naoy5GXGOmanGCAnkXXFgcuHsmfGglTQhepvhfwhyO8FW4Dy122oV0wslMNYbL3q
         F/fVncfZvelHJV63EWYf1Nsv/VZcgcwaK09mDAMqBotKEW54bIHlawEPbtpaQBVCTwc/
         3nkaY9oKlJIYx6pNkrbcf+xehLaACLs1ZAEjKdzGs7RWeLS3yMobRShNAgQdLb463fe9
         JMXQ==
X-Forwarded-Encrypted: i=1; AHgh+RoU2Yu0/jYWctWrgHSrZDGKFjhoIOddaL8oLMk77G41j1n7ghyQBCNxNYTWRmnzHBj7riWbCWOueBE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2mUl8cFGGkE4Z33FaCmcfan4Mp32DVBT1CwtgXyjvf+1qBCmn
	zVMR67uJoWaHdG7CJz7ZMn7CXZ4IaOWeHtaytwf0qfE+cSSjCA4GPaihiXICSPQ8RKBKAJeQhO+
	2tCYtjwtMWc7mMv6au3hrrPRR6RUzbG5MKyYphR9i8Fii+BIVcn4/TNy/V0FoADGi1WrX
X-Gm-Gg: AfdE7clCcNSd8WnRfreSGiAs4kF9UzsVWb4UoGXhbslSizgWYP2aKSmM9V9SPPR7wPJ
	if5b+6ytZ9HM1o1HMySh8e2XfNo3UV5MMC9UYO5QwKFSBsjz5hQtp5j+6QH6+7SbpLt+xMjSWez
	u5AUMIpNLRg6W89mFPaqnqrfGsJuoESnKAyCVmTBK7blfmapJcKBoTipc0/NxZw+pzm1/VTtAhF
	z4zvW8ZQ7fcSOzBXDE94bDyIwSK2mqc3jH9x5XZ1wVPaxTBOB7WIKz9eTA4Z51Y+ogZluo3sIk7
	6NEknjyVrDV94uiTLCiTs7w7wc289wnl2HelHhKfItBuDHHQgC7sAJ6OsMsInOq1E/TgbN0DPc7
	tDnXO7+KpISZPsnbX5/hUJk98CX7M94ZFzlcd2q7PqMySLlkEWmVzdoTFJXWq4It5wB0eSC4HnY
	vQzIFB4/S/MwLWlIhZAMnkIqR7
X-Received: by 2002:a05:6123:4b:b0:5bd:b27c:bade with SMTP id 71dfb90a1353d-5be907432a7mr312212e0c.5.1783346004481;
        Mon, 06 Jul 2026 06:53:24 -0700 (PDT)
X-Received: by 2002:a05:6123:4b:b0:5bd:b27c:bade with SMTP id 71dfb90a1353d-5be907432a7mr312195e0c.5.1783346004009;
        Mon, 06 Jul 2026 06:53:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13701easm2932551e87.16.2026.07.06.06.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 06:53:22 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 06 Jul 2026 16:53:15 +0300
Subject: [PATCH v2 2/3] phy: qcom-qusb2: correst PHY description for
 IPQ6018
MIME-Version: 1.0
Message-Id: <20260706-fix-qusb2-v2-2-8d9cd73b1db7@oss.qualcomm.com>
References: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
In-Reply-To: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manu Gautam <mgautam@codeaurora.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1792;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Ie5pYBqhk3vp8OQsIMaFbe7S/1NFcDmqVuYASiDHrc4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqS7NNWJ0d844JtYmUmLQ1wgzvuIfVAsHG6ccrZ
 +CvpNQP3bKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCakuzTQAKCRCLPIo+Aiko
 1ddPB/9qHlktAkKXgnjmWI8qkAJsxso0HoXFYx4cGpbhfDeEv1zAdr+41NnrF5RfPh1nDBM29pe
 +AExWZH7N3dlhNtQ3fJ+UVe8Rd9SvN7qM6Xss2xkkRdj4KxT/mNVH/Uqm4hUqPvCWT7sfszEz2U
 yIQdfVSj+tQ1E1GJ5mEH+5tAmu4Kxsce8kuA0ustU2FUxhEu0n+JapGOnoHEoKKremkpCsy09Ct
 QBPwEohc0Be0yapfxtNweN5GVIw3P56gIiMwC2XpUwxCofKL2IpcIWNf/bp0aHd3iFUnuP+RMsP
 jIfD2IAn/wpdQcRntghLZ6eaTzGBzVE+c4k7rTvQ7vjWItZ3
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: 9TMsLqXjLc9JOI4VFUqh2iI9DdXCbWyB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE0MSBTYWx0ZWRfXz1JpxEHRe7CS
 W7ZWYM+OjTO7EWI4zKvg5UF9saRlihDUthqYz676MNoi/OcIkfbZNPW/BuHHu+CXfPPya99PW6d
 epbbZSmIz8bSAYFbOOlf4lFCQAPXkVj2XUb51dYrbP1FlImM2rHiwvwM04dhpmYmQvDVrVIZISl
 PEnsujhpSUy5xrRfJJgbfslZVZmzlXrwd9LqsAxCzUAjcRSECgU+KPSNG5m2M9x/3pvqUMabvqL
 9rznie8KM6eVF1pE923cy2II5FNeKt0QagGjRhjNTiOJZ8g1D4ytfXBiu3wMTjt2VYxVshJ3e45
 H7cHjCYDcvZQc2hsM6j7UeQuelW8QX1lC8R2YIculGUwTfSd4f4LDE1UtWAkZNE824ZNVpOwGQp
 b2sv1ZwTOJFd5qPpGVl2WvL0MrldpNrW7QfdUdCCOpqEe3ogocKdlRoLid6sa+WbH1CTy2KLLpH
 LuYnqQpfu3ILSdmu8Mg==
X-Proofpoint-ORIG-GUID: 9TMsLqXjLc9JOI4VFUqh2iI9DdXCbWyB
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE0MSBTYWx0ZWRfXwxRT4XzSXvrE
 iU2zDggXW30VGMw0mtIPsi6bapXqbubk7BO1v+wv6q6YzkOZnM556LyI7Rf7ZGpXUrbcDm+h619
 osJHCaTn+5EKMyT5+kHK2FF25KuvUbg=
X-Authority-Analysis: v=2.4 cv=c6Sbhx9l c=1 sm=1 tr=0 ts=6a4bb355 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=rLpG3bFX5iBGt7CpEVUA:9 a=QEXdDO2ut3YA:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607060141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_065326_107986_001E3B86 
X-CRM114-Status: GOOD (  17.34  )
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

Qualcomm IPQ6018 doesn't need to reach power collapse or retention of
the USB voltage rails, so autoresume is not used on that platform.
Instead of programming a fake register bit (BIT(0) of TEST1, while the
QUSB2 platforms on that platform should use BIT(3) of TEST_CTRL),
explicitly disable autoresume programming on these devices via the flag
in the platform data.

Fixes: 2cfbe6765b7a ("phy: qcom-qusb2: add QUSB2 support for IPQ6018")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 15c36b594c09..b1d34b080cfd 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -294,6 +294,7 @@ struct qusb2_phy_cfg {
 	unsigned int mask_core_ready;
 	unsigned int disable_ctrl;
 	unsigned int autoresume_en;
+	bool autoresume_disable;
 
 	/* true if PHY has PLL_TEST register to select clk_scheme */
 	bool has_pll_test;
@@ -341,6 +342,7 @@ static const struct qusb2_phy_cfg ipq6018_phy_cfg = {
 	.disable_ctrl   = POWER_DOWN,
 	.mask_core_ready = PLL_LOCKED,
 	/* autoresume not used */
+	.autoresume_disable = true,
 	.autoresume_en   = BIT(0),
 };
 
@@ -676,7 +678,7 @@ static int __maybe_unused qusb2_phy_runtime_suspend(struct device *dev)
 	}
 
 	/* enable phy auto-resume only if device is connected on bus */
-	if (qphy->mode != PHY_MODE_INVALID) {
+	if (qphy->mode != PHY_MODE_INVALID && !cfg->autoresume_disable) {
 		qusb2_setbits(qphy->base, cfg->regs[QUSB2PHY_PORT_TEST1],
 			      cfg->autoresume_en);
 		/* Autoresume bit has to be toggled in order to enable it */

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
