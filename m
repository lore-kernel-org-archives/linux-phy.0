Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8777C606A68E
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 19:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=An9/1UqZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=PTCW4Tav;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=WNDcBXn8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bu6ORnsFds0Xl7jX72g9cKoBesVROe5aZ92MUXKDmOg=; b=An9/1UqZ9WyJsO7/Le5xHb7pvJ
	SN1XEWRKaI5CJ2Qb/PiOOZouPG3wHgupR1Q0BqSn8iQXimRh/fGR4Z8bGdDCYOSg6NY6LjrZG/sFV
	zfaxgiqJDC1BX2B7HtaA0wkDYD5fLuR5Y9k1DM5CvmGoxPZRZ/mb4B/B/yQlqsPzstFH45HJjOLTg
	sBgb12gA0eZAWjA7PHVqgPKxitajNn6XALub9ypWPELuEYF/D7gXYdUeB4PxXZPuR67sEi9HqNXqr
	27rPUQHi0F61rXJ49pibfhqn8WIFxwV7RB/jooABh2e7/OjcIu5ltGr8BdbtODSAMW74YOvh0Edbw
	1wmHGayQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehR-0000000EDCf-1EBw;
	Thu, 26 Nov 2026 19:00:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWehP-0000000EDC7-1ccs
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 19:00:04 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AQFu7MG3850556
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 19:00:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NII0+L88Wv3q4wyUgO6D17Ai3ObjNTZatzOLfgRo1vg=; b=PTCW4Tavs8sEGIGD
	sz8/fOge8yOQMouJw4pYBniAonjpd3qi1v40dZYuOZsWJDzyNco7HZjpzaTemJGB
	lfyX9S15RhwnPg0fUXshot5FEWJ3byCuw1fItJyIVgWbqjeC0gSevY6mTBrg+Xb7
	shXxmBvYar5xERAy+pUrE1hjJ6zJOl9JvvjTf9leLKLRDm+TKW4iFCcbdFy9tZDz
	4FshGmPhoCGlot+2Ps5Cq3gJ6lID+4jnHm1DFq3LwROaYunKW0hqRYfPMhznD0PF
	Z7ASnAYCXpmzd+MxqnEWJbJduT0y7YbG9fSFeEi/XXgR3foa3FPt3ddcUr92mFOW
	IxA9hw==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j6h7ga619-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 19:00:02 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-139b62317d0so3063068c88.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Nov 2026 11:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795719601; x=1796324401; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NII0+L88Wv3q4wyUgO6D17Ai3ObjNTZatzOLfgRo1vg=;
        b=WNDcBXn8AgN/4qrMIBZ5VQLRHiAsGOoEd+sqka9NbNozXe20LZQdLJ6n1uDXQILnq0
         MT18ll3Q9t9E4wuHBfzUVPLhUYy87VxWLVjNZHngo48DTWzQ60N2VKrTWSOr+LTTvbql
         IF/kSewNrvfUYrrameOhRH9bpnBNLPHu0+AJnE3eCe5oR1joDfCgCuNzcy4uXNZ65+1y
         36KdkxJD/uikrYUpjs9xdy/JKrjXZud79GqxQmJzOUZarUREdNVsYExZZWDspO7HSYks
         ZyXvl77KGxE1AkF48gtoMjRynijSXU/OyGKf/a//mSlsrBDGLxLdNM3DZuGcLARR4B7p
         ETVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795719601; x=1796324401;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NII0+L88Wv3q4wyUgO6D17Ai3ObjNTZatzOLfgRo1vg=;
        b=bMUvy23r8ivEAjMPJw5rmU3okdN24V4KpeH7RpHu77NtdQL9RlXg1ctXLGynZuTbZ8
         oWcT9QBeCi/Lvb/khCVwehW8pgmpqqjuOtZIZucMz8WswCQwdD0UuPqRvXtOu5F2xDt+
         ryya+ip03XlcsPeJXbqdijYYtzgsZgedFHZzvmdQ0BXulg0OxounsxsE5ryVXR7U37kH
         WD9aahNhCCv1qGGJ8Lzt2SWuvXA1kqtoeHnantx9IyxK7Mu9rT1m6aK/Km6zfL6BIxIO
         CigumUnX44WJufWYx+YoAOcw68s8pOIhW8nW6sD+y3uIstTq9gR1D1z3o8tmkZYzmgMD
         xHYg==
X-Forwarded-Encrypted: i=1; AL+hErFBYYOennzpZRG+2I+UfgFPtdZCQ8h9TbEgrjeFefJvoVjHTPEM9kkUx2rb5wKxZOX8IGmWxeMN/6I=@lists.infradead.org
X-Gm-Message-State: APuU4Z8O2svZAuAxaUP7mwq8SbH4Eq+AkFQWb15Elo8KVKtwpPBLisHz
	FVVPq1r5327DquQapD1/23F2JSGiNgHcXzmhsHe80REkxrz9Uv8viVeFycbXmBvGhKeB6pMRl+e
	m80OfDmA1BWcVK+LcujhFwT7QwMvuDQdSJoVLOGuPLryUKyordBK8SQ4qJBdAFeH4DrBBVNwoX3
	tJ
X-Gm-Gg: AZFdTZfRTueKdR3D9eAu64ArRo3b46h88JG3RJtu+2h+uRb/x7kFn9y5qsd5lGlRoTT
	ISobxCRPRYHoyHP0oJ51733i4mKARUgpJ2FwMrVS58RWd6VysJ9KVStKKb5W15YwVeTFMT3Qg71
	eb4ikxLb/ag4kR+tPFFyxzKBIal0x7F74ar8hFQ+jAm8dQMHcTYCqCH9o8oSaT5iIWs2UoI3DcF
	8bSIcwjuLhFB5yazxhZhffSWZa50IadQdYx36wUkjjSaxRt8ZaoZuhuJPdY0TWRgTyan14OE2w0
	nNZF0NO5hu05DFyDH02WDYFhUaTFzfhBchg1kb0cXD5raasWyOzj8MKaDUJpEEqUhvxzp9qxQsX
	qlgCHUu0QLX3ABKW7GYq/v/FczbfP+o1YGs3DgNnW0qmMWPOhQ/4/oBtjeWwbdVB5RHbZRq69ad
	PnqcM/
X-Received: by 2002:a05:7022:1701:b0:1a4:c892:b130 with SMTP id a92af1059eb24-1b55feaa6a4mr19781253c88.15.1795719601437;
        Thu, 26 Nov 2026 11:00:01 -0800 (PST)
X-Received: by 2002:a05:7022:1701:b0:1a4:c892:b130 with SMTP id a92af1059eb24-1b55feaa6a4mr19781239c88.15.1795719600868;
        Thu, 26 Nov 2026 11:00:00 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b5567ffa8csm60868190c88.7.2026.11.26.10.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2026 11:00:00 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 00:27:11 +0530
Subject: [PATCH 3/8] clk: qcom: gcc-qcs615: Register set_hwmode_dev
 callback for USB, PCIe GDSCs
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-usb-pcie-gdsc-suspend-v1-3-485a08ffdc6f@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: 9fDqbfZusG92cIZUG39j3hk8mXlT2wrG
X-Proofpoint-GUID: 9fDqbfZusG92cIZUG39j3hk8mXlT2wrG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfX7AWfP3YCFJu+
 LuLcTXeBoa1gwR82YjJO0RxzZy7lYf42or/cvme3Hm2GyyFWqFTpl3nczyoZdwbgue7UwL9QyW2
 Mal1+11lQfMUOXEVZVUK9uLYVMWxbt/GhRVYBVUo29Mp5RTT1oOylVmdou1VWYw4Zll7Nci3MlX
 gQzl3GM93jAEVj8HYygRP0jYOZUqcaImgP0MjhfEaSQ+nPX6yC50Sgj3qS6sEmn70K74nid1WpQ
 Ag+PzEepqSQ7nMO02fKgRtiz78c5+Xl189R9MQaHgOVmk8bKgEZFEhD0bjd4dSe8ZFbS3e56rg+
 qZS42B00P5aexeVlrzk1ejfDxn6S0geG4tN6Wx/b4F8OPPoOd7KhfDh7kNKKjupWySxNVFW6NWF
 XHRqjW/oTcVOzmNzbzZZ1YjvrzLetCjMecN/fHHu2R3d+zDvpHdpl9ZTbBB/LSTYB+rTK/DdCVN
 h/S6DfgEwoSnTcB7VNw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI2MDA3NCBTYWx0ZWRfXzNl3OnW0mX+p
 xfFvQfeyOjeDfGq7jb0NCEogtHJknjTLJJ9ahNfk9wha1k21E++5sQiQc6HWfvsVjsPS1Rkw2ir
 jbxMDRPqv/5mkoaVDGEaEIrYLwQO8fQ=
X-Authority-Analysis: v=2.4 cv=L4GI0OT8 c=1 sm=1 tr=0 ts=6b0881b2 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=zroWNzDgHOBiqxzc7EQA:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-26_04,2026-11-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1011 spamscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611260074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_110003_558375_219219A1 
X-CRM114-Status: GOOD (  12.15  )
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
 drivers/clk/qcom/gcc-qcs615.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/qcom/gcc-qcs615.c b/drivers/clk/qcom/gcc-qcs615.c
index f205de3a936170413b21173c7af9668c14495369..76d835346632ed672e0cfd896723b84c185de270 100644
--- a/drivers/clk/qcom/gcc-qcs615.c
+++ b/drivers/clk/qcom/gcc-qcs615.c
@@ -2654,6 +2654,7 @@ static struct gdsc pcie_0_gdsc = {
 	.clk_dis_wait_val = 0x2,
 	.pd = {
 		.name = "pcie_0_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 };
@@ -2676,6 +2677,7 @@ static struct gdsc usb20_sec_gdsc = {
 	.clk_dis_wait_val = 0x2,
 	.pd = {
 		.name = "usb20_sec_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 };
@@ -2687,6 +2689,7 @@ static struct gdsc usb30_prim_gdsc = {
 	.clk_dis_wait_val = 0x2,
 	.pd = {
 		.name = "usb30_prim_gdsc",
+		.set_hwmode_dev = gdsc_set_hw_stay_on,
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 };

-- 
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
