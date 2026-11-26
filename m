Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91905606A688
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 19:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=J+hNDu7L;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=T5xT4EpZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=KhK9UT97
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sgvXrxZMbiKGkpnCKqHtU05d1jnD0w5UiALr9tOGU6g=; b=J+hNDu7LHGDyKKD+6gPgoiQ3NL
	ga7s0uYj44nhCtv09rLqbhw/cDIzE+BC0R4qD/H5kLtd6N19nRiJA5VEZSqXGmV7UFcxysdMLdn+V
	EaR53DG57uconJVDH1pnhYFeln1Mkq9j2jDxv2oTLclMeeUX7IA7IIHs4TukmCadgFkRzyRQUSiG3
	ZAzTZOEPCnb955k6+etUEQ+4ryAaWIV+pWxcET2MQ5jcGFz4nXKubVADH0p+dibWa9qwKX/7TheL+
	aj227K0ezPcrp/VBy4IRHgknDbpyge8A6DtMZku301ZKElzzkE4NCt/kbd7ugmLVvNrfspQI0FOo2
	f43w1uhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehZ-0000000EDEG-1PsH;
	Thu, 26 Nov 2026 19:00:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehW-0000000EDDW-2MYD
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 19:00:12 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQGciKg597751
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 19:00:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pDb1bViDSMIyx76M0CQL8Q8fh+r/vAHy8VyY0ktLyHE=; b=T5xT4EpZWtvAT+SZ
	blTm/3lR53uV5o3B97RR96hZ71sYYPLk25oxDULtBk38KbnqSzZ1bKHTqA3bkSXV
	Rj2bMCPVuSoMu9/KIqp34RQz6BIoN4jc8NDiSABcMfB3FyFaPI+Ts+Qv5R1y4tdc
	BI4NE2Q+IBsA1mchp9rcavH7fa5G1semK7BH2JjOiwlPmj4Zra45XYAHVTrZvccQ
	n+0fbe6+82PIsFJUfiGh3YY1+kOAhsk+jQmuUk/jHJtpU6wTLQ2FLtjTS+Ey+M7r
	mm5TzxqVysAntcmm54DI3RGrLFkf9QTpLST7xeVbB4o+j9CAF2XXBwO4ZEcuSbGH
	V90XoA==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6rf90ded-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 19:00:09 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1b592e9841bso1629409c88.1
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 11:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795719609; x=1796324409; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pDb1bViDSMIyx76M0CQL8Q8fh+r/vAHy8VyY0ktLyHE=;
        b=KhK9UT97Dml+0sebdRtdp9jpKF6k2XaQd1WKbeveaFY2Es5egZ3lmfbIL++NiinhRW
         szxnq6DfXCCx63LcWC/e1QVuK0ZINf4RMbUXxxfpWTpvgtQSqUqyHZjg6oPcCOigtHHy
         AZ3TKMOr3CVplbiBsnon9bzVFKUl+Kal1Ri8IT7/M5JgHoKyhAgdQ0QrOKtJkvZaI+ZN
         UyBfYSi0hAF6ytSA4EntaYQpzOua02DU1oQhisAMmnfcyu00TUC5vY7b+0VPP62qO202
         0NwtJhYgKVy38kBrZmxVpGCNgGR3LqE6tC1DXTzIPfGb7Lp5U4SYFfYi3GSvEM1TWowa
         LrKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795719609; x=1796324409;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pDb1bViDSMIyx76M0CQL8Q8fh+r/vAHy8VyY0ktLyHE=;
        b=PLBCDgcQqHUr+wDXAdoKNB+6QgDuFrxa4UoDRPL1TbFSoX26uDD5Bbw/T/8Cyj6kcF
         /27RCoG6dp2MHt4+DWS7J2UkPlnhEeO85fzsZFJ9lZAe3e3u3MdO2fhWpPfyU5Xg7OyF
         X+F/z/L2fDPg5uLDJEfarmWPR3teffddLyUVi3y5Q0FAnf5iCPURAtyahvgGaopdqPYk
         qDUK3CBgNQKLIW3LUj9jo3+GBuHCc3SWtIDnXrz/lYv0axQv+pcromwTwAZqDbH+kxmx
         qU2g2XG2n3t7pNn2Ouv3oc7NtkQYeBwEKGEJyev+N+QMhVJWfW6Y4/r2qJVQfBagzjDb
         z1qg==
X-Forwarded-Encrypted: i=1; AL+hErGpxHib/mb2GdjtyCUQhK0h7Dzl7l0L1E4VW7J1fbQULZMhRyTUkX2YZaMTcR4NBslrgPdOWEh1r40=@lists.infradead.org
X-Gm-Message-State: APuU4Z+982BFnAG/DHYmTlM8YMXPg3Cj7og8odbNVYRCx1amn4tgbzFo
	IfJo8ryarTKcEAvZfsQ6MPGHZhe4KaEWBd16gSbZJLY0IuQCBfQVvcMhXtOX7doahD2CDOa3qZN
	Ax1GgYlJBwYe9jnok3VQpMUKFTaXV0eIrHJNFMqjgCozs623N/nP0WAAWpJfzJr4u9gPTHFMjTO
	UO
X-Gm-Gg: AZFdTZfbXd3/i0PbEc6c2afdRCi1SX7wFsouY0sNF8DTF1KNm+mS0EQ5FOO5YPHK1s6
	LHsOVL1IiUjtZ8fGlVEw0CVEAI0Pn1Ye6A55MxG2m6zcfzoJfpjVWvm5403v2vHBH+Aca66Bns6
	7c4NQr6n/9OcB9bX5ke5I9mx9Q06+mIUhf2bpnQ4JfYdisPT9U8dQ2112u/Z6T0YC5/Kh2owyZk
	PR+ngIw8FZHsE4NIIJZWS+2y4b2+AbuqwbjdHb4e+SqtnsmRkHXdNhSeaMAb/K+UaLE9L3+Yeh0
	ecJ2PFXQRyq5KV5m8W/Ty9pOKrfSoopvl/cc1wu6kXJ10ixLVhGo9hJ6bzH1sH4ZOHcbGJ+Wtx5
	xGMmwSCXYaMLsjAwrj2R2xoW9bNB70lc1A9aUt9iCjIsEsbb8tbZauhRmU1SZP7xRu8QbKxaD+Q
	fY4vBV
X-Received: by 2002:a05:7022:4181:b0:1b0:4272:4282 with SMTP id a92af1059eb24-1b5568ba440mr34051538c88.17.1795719608735;
        Thu, 26 Nov 2026 11:00:08 -0800 (PST)
X-Received: by 2002:a05:7022:4181:b0:1b0:4272:4282 with SMTP id a92af1059eb24-1b5568ba440mr34051461c88.17.1795719608015;
        Thu, 26 Nov 2026 11:00:08 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5567ffa8csm60868190c88.7.2026.11.26.11.00.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 11:00:07 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 00:27:12 +0530
Subject: [PATCH 4/8] clk: qcom: gcc-shikra: Register set_hwmode_dev
 callback for USB, PCIe GDSCs
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-usb-pcie-gdsc-suspend-v1-4-485a08ffdc6f@oss.qualcomm.com>
References: <20261127-usb-pcie-gdsc-suspend-v1-0-485a08ffdc6f@oss.qualcomm.com>
In-Reply-To: <20261127-usb-pcie-gdsc-suspend-v1-0-485a08ffdc6f@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
        Jerome Brunet <jbrunet+clk@baylibre.com>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Ulf Hansson <ulf.hansson@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-pci@vger.kernel.org,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: Kk0MpKvTuCtbqMdW3sZQGBkzn99kGXSB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX+x2++ZvNDT4S
 bthk+l8QXhCONlhDQSxkw8VfCgDOlFpVObnAqPM5m758gMoFnrujs81yY/GUU9uWGEzGSc/Vtup
 CBDghdobh0qKkymDG05ei6qvysMxMjX9kapR4uii2QIdojOhzHainjVwhxSdU/UBmFQkKAfwkTI
 8BmS+y0HCUSb/6uJSTeOSKzaZYADPdr7ZHXZG+8wH/jC/yFXWGvCbuoAXloKFcJixbE9UrO8tzk
 yBQB4dJT3a4K72deNgxVbXqDYd3d1MOjLEb2adLO5nS8E4H0lxRlU7+GOvFMxoPKW7KD5u7tFkJ
 G6x59axy8YUXd7N16U5MBD9vxZG57DQOewf7O6SB0nhyBDRLSHR8ng+D5MW0tfN/K0rLQDJQgSS
 9Ta4F9mdxB91MXUPw2bHR3k2WlMiPOF3G8XtlzoKfK8KalayKwqhGPDBtqYKSKClDZcodOpXIt0
 QfgLRrUL6F5UUeb60Yw==
X-Authority-Analysis: v=2.4 cv=cpkOAF4i c=1 sm=1 tr=0 ts=6b0881b9 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=zroWNzDgHOBiqxzc7EQA:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX178UYDrfY17c
 ge1V9PtKQjzorny3ZxZ9fIIj8+nXADg8CBXgjB6SfFUfpZzE2jQmglB9Ik6cDWd1kOSYkvBBdQa
 B2TkSJw9Ow1iYckuDZcFyY3B50MezYQ=
X-Proofpoint-GUID: Kk0MpKvTuCtbqMdW3sZQGBkzn99kGXSB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_04,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0
 suspectscore=0 malwarescore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_110011_517840_0BE58321 
X-CRM114-Status: GOOD (  11.86  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Register gdsc_set_hw_stay_on as set_hwmode_dev callback for USB & PCIe
GDSCs to allow the USB & PCIe consumer drivers to keep the GDSC ON based on
the requirement in USB host mode and PCIe non-D3 cold usecases.

Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 drivers/clk/qcom/gcc-shikra.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/qcom/gcc-shikra.c b/drivers/clk/qcom/gcc-shikra.c
index 13c99a883e29877d9a929f26ca0b3b04b1ea0b11..075a9a5e503d0a1aa9ea2c772216a19f0feb16b5 100644
--- a/drivers/clk/qcom/gcc-shikra.c
+++ b/drivers/clk/qcom/gcc-shikra.c
@@ -4036,6 +4036,7 @@ static struct gdsc gcc_pcie_gdsc = {
 	.clk_dis_wait_val = 0xf,
 	.pd = {
 		.name = "gcc_pcie_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
@@ -4048,6 +4049,7 @@ static struct gdsc gcc_usb20_gdsc = {
 	.clk_dis_wait_val = 0xf,
 	.pd = {
 		.name = "gcc_usb20_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
@@ -4060,6 +4062,7 @@ static struct gdsc gcc_usb30_prim_gdsc = {
 	.clk_dis_wait_val = 0x2,
 	.pd = {
 		.name = "gcc_usb30_prim_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
