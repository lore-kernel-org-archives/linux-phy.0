Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CAE60A261A
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CAcgZMjK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=lJN3teFk;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=VHZJ6iR3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=A+g/fdWQSQUi930vFOFmcAR2B0KHMShsLFQhmKdt3Bg=; b=CAcgZMjKZlzG808hqZ2mTokw8l
	J/L20FhjaIysFhTmRy9Ch5R+HBxLVYgQGPGSvGppSG60ReOenuod9NEzidQR7WlfiDLVOsnG+AIOO
	pWtfwY/z+AjFHD8oWh5QAw0nJKLT2snR7El0Tr3TkJpS1bXF2454AHeO+iL/dOf+oayfrvLC0A3eh
	Xp9geLC967wI7jLygrZ0oIyY8hyOTgv61U6eGNY7lLu09lq2ZzX/Lkc1iqXSJzJimIkOszKL4ouyc
	Jhfoy4oQX37jJwUnMcVof/w+y12rvnPfq7fD6IYP1sTR13RacZjatpwSUdNvVnclrqSYIwTd66T1y
	9rjxuZBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpKC-0000000GBDV-0k1Q;
	Mon, 02 Nov 2026 10:31:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpK9-0000000GBC3-2yOz
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:31:34 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29AE702467034
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:31:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LC4a57rGSumMejdWCZ75d2s0Usyqle9Uga0vcCXouQs=; b=lJN3teFkYBW+FNUv
	yiN9cF3LekexHZmXBEqdM5JR+WPoQnVvuYg0SZYwLcvFVjuV3SUORE8HYlnuzpc3
	AsftJfcMYvieK6GGHuAonEfI0/T1ew4mhJy7Cb7yfRC/AnJqM3nVy1YXi4jaruUG
	pQ2eZt6cLBCstbaFBcAafXi8ngFat4IiHvLvHfwwg2Tuq+GyQ22hR7/N2++detQc
	8j0QNi8yDx03VOJHfQdE2tLXd9QwFEQGn5o+s+6M8pe0YCS0kvNjwe5W3Q4xWNp7
	U0TFXTPQpD+zFV7HkIL1LTTUpq+lBgldBQjtZAqjT/QSRyDT7HZivxXvp/8o1+eF
	mIEEOg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpk9rhbfw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:31:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93cbf2fd504so507860985a.2
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793615492; x=1794220292; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LC4a57rGSumMejdWCZ75d2s0Usyqle9Uga0vcCXouQs=;
        b=VHZJ6iR3TwvRJ+CAqsIoT1c10LlijKcu0YwzmB6r36RDgq1+WbyhjPStRnlKXF4ahe
         /+dIta6aGpvejKgU8/hvAxqvlj7SG2Q9XC4GRNBHrlyu8MF9u4tKKJyaDGKVpTh34A4z
         4vMZzImSG+y9BpYRJsKE3/d7LmoWV15dsYmmPZu/QzT4eml1LtGH02a5IjczM/gZvD43
         i60mbwDlt9X9n7lXhjRnfVm/i/8fVipg0lcNgqWEBC78o1mPAb8Z3+dQSuPfs0ZGMEb7
         xdHvnVo+Fs6LdAFB7S4dYWsvXbNd7LJUlEL7a0RUKG36SEhJT/A3i7+DJqlyM6UkY/kA
         BKVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793615492; x=1794220292;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LC4a57rGSumMejdWCZ75d2s0Usyqle9Uga0vcCXouQs=;
        b=t8kJsUn9djGoOaQGAeCxcPe5t+ArxpK8fWt4qcRAxrfO5IbDpuo8LkznQ3RKIj/evn
         7lObZW9n5ovMzVu5uBvKJhV4LzQlSRhBfOdEc1IVLgttonkYkFxNC7XGSwBUrb4v5eD/
         oT0DGNW024TJH2GW5V6N/qFqjrtx/yRxYid48D7pLrFxTRuI1CrN9TzKFLMmnArY/ixv
         dqfTE1HnEkHhIHD7xu4pgFeldS1ja1t5khLc/7rdp2T7HOKpGJGAR3g9W+TYphob43nY
         lTAAYWDJD7wiePx+gXuEKmaDmxdwHqOCJWbYn1P49SsHiShdljtzubMjSUkWtbPnP9gN
         7OWA==
X-Forwarded-Encrypted: i=1; AKwUvBzVrFTW0ZLLqI6rQhkRbScumpuPCi86Tq8U95HiVsV0vUMtX4yCpgKzKC1O0x/wGTs/sLSKHGU1u4U=@lists.infradead.org
X-Gm-Message-State: AFq9FYIVJeJZ1vfeo4h+hJY5Lq+kXt2dqlVKPPcO/0C75k0OywnefM50
	iegcvbVJ89uf2PYeX2jgDLnFdFk4FdCyW0bMxex7xUOuj0DHP9ZZQ8UuHAlPKPoiIeIYu7lLi8g
	bWQjWnfiic6T9MCejkjG1+oTkPYMBbym1SZG+mGHKYR5Qs0pMCFwydDEMXFltPd464dhQ
X-Gm-Gg: AYBFou1EuK+6V9DjeMRnmdURLDOHOgkl3mju7Xb4h8gxN+0LZpKZAAbYtuhzUey5bsP
	iRT+VhWEBnmbhRCJBOmjwyeIKNa5OXKNaILYLpbcIZYnwxby4Q5lzS5pPghecgVjq1TOeTQbTVH
	kkgmavt39MCrmABo8JpfL9Z53MlHJ44ZB522UpvpaAPb4WW5ukPO/Kqikkk5pG9LlVpV/+OdKH1
	8DqywgTDRFifHVYSk+MxL9HnITeOV1qUvnCKj381VL+bt7DMkm0tBJFJpu8XGJZRDwlHzx050V2
	nHTh5MPEB8h+JWv5lPo+IJSWODyIyjebosuw4uIK6a4Vk1+ffaHwlYiqeluDDze+G17fYduhJ0+
	Nr3rPEo/pO50WluthKfMf/tyfLAvp2J6JdEel2J9IPjcThuL3sbO3FYEl/eSMOWT2tBF7Drjlau
	QRFA==
X-Received: by 2002:a05:620a:2688:b0:93f:21de:f3da with SMTP id af79cd13be357-944216f2010mr1452049185a.15.1793615492166;
        Mon, 02 Nov 2026 02:31:32 -0800 (PST)
X-Received: by 2002:a05:620a:2688:b0:93f:21de:f3da with SMTP id af79cd13be357-944216f2010mr1452046785a.15.1793615491730;
        Mon, 02 Nov 2026 02:31:31 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4aa7c5063e3sm327847885e9.0.2026.11.02.02.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:31:30 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 11:31:21 +0100
Subject: [PATCH v17 2/2] phy: qcom: add the SGMII SerDes PHY driver for
 SCMI systems
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-sa8255p-eth-phy-v17-2-aa138f2912a0@oss.qualcomm.com>
References: <20261102-sa8255p-eth-phy-v17-0-aa138f2912a0@oss.qualcomm.com>
In-Reply-To: <20261102-sa8255p-eth-phy-v17-0-aa138f2912a0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5648;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=m0NfEAr65Ya7sSDjlBSCHwDfnH7eejsULme+UVonYRI=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq6GZ/w1HMpv6Sy2QJE3izdqIxtXyX0UCvuAUXl
 kba++uG9V2JAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCauhmfwAKCRAFnS7L/zaE
 w+KHD/0YTe1K8/b0lrHfvDU6R0BXPMSzeZzJRTXQ38TN4ID2pCqTwi0La1lp7BIwKnyEU1wHhQ6
 DpyzibBxjA3At1P82gOGIwiXsx8yMOZA5d5ZuGtJ9zWcnZAAzyPnE7NjB1dqcZpYGSHOnSZfJ7v
 JTmsfJUMVxM5ZrwJZvXkdOyseAr4wSG0zGgy2NhjaETJifSJpk3YtGKoIhlqrEzLpJYwtn1t5Nu
 RWxhngH9qalCedIzIPed621VhJ4AgIplPkddiAqMjYGjnsacxoEDwa6NveGWn6kATaPWy7Dssfe
 r7PsoEZrltvp0rWxWqnFFfcURXXkgkTnRFrXA8uco3GdhL/7iM+oYTp7o5t5nAUU+VFcpCn35pd
 2ifwg/aiiXNXyOwL52LjOxvqM2eJatMihOeVHYW0nRuuBwMhN91yi/Z1F5UaOdmO2IzWqmtBxtg
 H+Mua03VyoCkLr5D4VX0VwpD+O5C2GNkTgIfBerUpcvokpWWIBq+kHJj7aHUzSd/lDjxUosCNj0
 71L5EpkzOcWWA2eqbh28E6V03iGXy6AD1axMfhOzvR7VgmQdFREboJkGAPPuKzUzjHAaoKBQogI
 0jcUKaRtZIIvZJLJa2LgKMpdyJl40stwNHYDv3xJZ//P4mjdQjNSpFGNw/Pevhpxgyxe/QLAgaT
 lkboffPFjGoFttQ==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-ORIG-GUID: UVlBTXabSIraHhvPOVOd7K49gwn5pkkw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MSBTYWx0ZWRfXxYvYCHg0CLhd
 mEF/WYfsBTRzDgL63DSF5hoyNEulR5uWHV6rN4vmtZXy7S2oEA7h+MC983MpsqEN1KTbiRFL3c6
 QO2cxPTO8/1kN4EfF4tby7IAaKu4qCgEcQS4Qo6d8KI9aiGtjiGJ8PO1wTxnNHhJBvEzSdNsXjY
 aObriehVSofzdzsNVOhIyTrF5ErSobkNBYLK7SA1WsRlpsFjAAsdoaQEV/JY01PYKRKrZw5HBTr
 IYBBK+3eEtQByoT1T+RMD/p/Q69TbbUmdFAuGPCpp6u26GlrGcf940XX/m9MMSfVii6vqpml3v9
 PAWFh44V/eOM10h7wPmB66HBDCkgBAA0CFo5ipRfvbk7tFQ2zUPC7G8/9I0S2V7sc9twzjVL8iU
 ABhzYftYeBlmeLSvO4grlnIOXNBVZ4CIk5z+jfYO5dnz9D2l3dgVqVJtsq7wEcNuNFpACef55TV
 GbfnJsRheaREATt9Gzg==
X-Proofpoint-GUID: UVlBTXabSIraHhvPOVOd7K49gwn5pkkw
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MSBTYWx0ZWRfX+hZYCwo3kUuj
 TuPnAtEVOINFJvTdAq/93poUjwNVW+/YG+Vp6s4KV0Qirr37wlNMRf9PchQnEVsM2mfJ8olR9+h
 BOWXJaPXs9iTosxKMKZ0lRk5w68cPNY=
X-Authority-Analysis: v=2.4 cv=LvwHWXdc c=1 sm=1 tr=0 ts=6ae86685 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=hTw9fJJfFBl441PWpkgA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_023133_762892_BD39246F 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Implement support for the firmware-managed SGMII/SerDes PHY present on
Qualcomm platforms. Do this as a separate driver from the HLOS-managed
variant as they don't share almost any code. The OPP table is added by
the SCMI DVFS perf power domain driver after being fetched from the
firmware.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/phy/qualcomm/Kconfig                   |  11 +++
 drivers/phy/qualcomm/Makefile                  |   1 +
 drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c | 113 +++++++++++++++++++++++++
 3 files changed, 125 insertions(+)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index 44a805361e35d9b34b9ae0bf30b0f8201a2532b9..2486720b9ffc8e7661ca3e109aadc6971abce6c4 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -260,3 +260,14 @@ config PHY_QCOM_SGMII_ETH
 	help
 	  Enable this to support the internal SerDes/SGMII PHY on various
 	  Qualcomm chipsets.
+
+config PHY_QCOM_SGMII_ETH_SCMI
+	tristate "Qualcomm DWMAC SGMII SerDes/PHY driver (firmware managed)"
+	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	depends on PM_GENERIC_DOMAINS
+	depends on PM_OPP
+	select GENERIC_PHY
+	help
+	  Enable this to support the internal SerDes/SGMII PHY on Qualcomm
+	  chipsets where the SerDes hardware (clocks and registers) is owned
+	  by the firmware.
diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index 4b5e6640a6faa05715b96cc8e9512208340fb595..41f192c9f4182977573dc8755b34575b13212fd7 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -31,3 +31,4 @@ obj-$(CONFIG_PHY_QCOM_USB_SS)		+= phy-qcom-usb-ss.o
 obj-$(CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2)+= phy-qcom-snps-femto-v2.o
 obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)	+= phy-qcom-ipq806x-usb.o
 obj-$(CONFIG_PHY_QCOM_SGMII_ETH)	+= phy-qcom-sgmii-eth.o
+obj-$(CONFIG_PHY_QCOM_SGMII_ETH_SCMI)	+= phy-qcom-sgmii-eth-scmi.o
diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c
new file mode 100644
index 0000000000000000000000000000000000000000..81bed5702bc17d2b05513122b22dc7a5cb75fa63
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c
@@ -0,0 +1,113 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ *
+ * Firmware-managed variant of the Qualcomm DWMAC SGMII SerDes/PHY driver.
+ */
+
+#include <linux/device-id/of.h>
+#include <linux/ethtool.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/phy.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/pm_opp.h>
+#include <linux/pm_runtime.h>
+
+static int qcom_dwmac_sgmii_phy_scmi_validate(struct phy *phy, enum phy_mode mode,
+					      int submode,
+					      union phy_configure_opts *opts)
+{
+	if (mode != PHY_MODE_ETHERNET)
+		return -EINVAL;
+
+	switch (submode) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+	case PHY_INTERFACE_MODE_2500BASEX:
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int qcom_dwmac_sgmii_phy_scmi_set_mode(struct phy *phy, enum phy_mode mode,
+					      int submode)
+{
+	struct device *dev = phy->dev.parent;
+	unsigned int level;
+	int ret;
+
+	ret = qcom_dwmac_sgmii_phy_scmi_validate(phy, mode, submode, NULL);
+	if (ret)
+		return ret;
+
+	level = (submode == PHY_INTERFACE_MODE_2500BASEX) ? SPEED_2500 : SPEED_1000;
+
+	return dev_pm_opp_set_level(dev, level);
+}
+
+static const struct phy_ops qcom_dwmac_sgmii_phy_scmi_ops = {
+	.set_mode	= qcom_dwmac_sgmii_phy_scmi_set_mode,
+	.validate	= qcom_dwmac_sgmii_phy_scmi_validate,
+	.owner		= THIS_MODULE,
+};
+
+static void qcom_dwmac_sgmii_phy_scmi_drop_level(void *data)
+{
+	struct device *dev = data;
+
+	dev_pm_opp_set_opp(dev, NULL);
+}
+
+static int qcom_dwmac_sgmii_phy_scmi_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
+	struct phy *phy;
+	int ret;
+
+	ret = dev_pm_opp_get_opp_count(dev);
+	if (ret <= 0)
+		return dev_err_probe(dev, ret ?: -ENODEV,
+				     "no performance levels available\n");
+
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, qcom_dwmac_sgmii_phy_scmi_drop_level, dev);
+	if (ret)
+		return ret;
+
+	phy = devm_phy_create(dev, NULL, &qcom_dwmac_sgmii_phy_scmi_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(dev, PTR_ERR(phy), "failed to create the phy\n");
+
+	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(provider))
+		return dev_err_probe(dev, PTR_ERR(provider),
+				     "failed to register the PHY provider\n");
+
+	return 0;
+}
+
+static const struct of_device_id qcom_dwmac_sgmii_phy_scmi_of_match[] = {
+	{ .compatible = "qcom,sa8255p-dwmac-sgmii-phy" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, qcom_dwmac_sgmii_phy_scmi_of_match);
+
+static struct platform_driver qcom_dwmac_sgmii_phy_scmi_driver = {
+	.probe	= qcom_dwmac_sgmii_phy_scmi_probe,
+	.driver = {
+		.name = "qcom-dwmac-sgmii-phy-scmi",
+		.of_match_table = qcom_dwmac_sgmii_phy_scmi_of_match,
+	},
+};
+module_platform_driver(qcom_dwmac_sgmii_phy_scmi_driver);
+
+MODULE_DESCRIPTION("Qualcomm DWMAC SGMII PHY driver (firmware managed)");
+MODULE_AUTHOR("Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>");
+MODULE_LICENSE("GPL");

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
