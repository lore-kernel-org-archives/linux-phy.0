Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39877C83F1B
	for <linux-phy@archiver.kernel.org>; Thu, 17 Jul 2025 08:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tDLCIeigceeJEd+MS0SgIzfu2B9dQ4eQ6BGoM+XzF5g=; b=PWccqKf3hDpqYh
	XZYRoZOceJ2i5eq4oCjHjm58gTXFsF7dI75mPmVT870ke9/czwbHm+wR+vOYxJ2XDiTJQBRRBnPrd
	3zFPxOAJpw/LY3eJJM7NhCKCUv1m5tklVsW+Lp4JJXUJ+RGYCSuVl7Bgd6OyiweseIS/O7VwyEKRx
	EMSNMaHm6BOrWDO4Vsx/JAf2IyeCDQD5/LgYBgwUkjDdrCAr6S7eJw1Yjtj37/fLA37NIodIQE76f
	LEmYLzINWMKgR7InAvjVYOUC8vZyJHL/L9GdEqqznoI/3RNnD48HJo8bwXAkxaLLqkIYGYyIVwTgd
	acheSlV//uejoZTvj7RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucJck-00000009X8N-3rQs;
	Thu, 17 Jul 2025 08:05:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucJ29-00000009Rm4-1rlZ
	for linux-phy@lists.infradead.org;
	Thu, 17 Jul 2025 07:28:03 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56H5PRRQ021567;
	Thu, 17 Jul 2025 07:27:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=d14ckrCMuZgzNHnUDuNhFN
	FqmXjLNb/Tp604F/4Ov/w=; b=jJxHHA9zif7whnGBq6dKLlrJx/7GYbLey9+/d+
	cRsmwsMQm90sDNCQuW/HUQ0hFWwPYW21QOmRq/4Yzxs1PHkKrNjoBrvv8qAx/ULD
	ZyYAmMrQi0kXLJli7LTk5Gn8cewbLaVhgu2Y53H+/gatcuk3csI0nfiUUO+8XJVH
	noTVufU4NjojMPXi6MHcie6SWZM8mRn5b8XDbxh6YnaRP4V7D9mga7ylMynT+LF5
	IGS839uV22m1QEqzOapG0m9hWJ2f+hT4qAyKoXP/FvyWNDW1vvRZbCfiaQ1j0G07
	VZpknn7w/EVbom6pdkFIWaLpHUet7HTduqecRTYLyuN7ERlw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu8ejj9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Jul 2025 07:27:53 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 56H7RotA029527;
	Thu, 17 Jul 2025 07:27:50 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 47ugsmt61c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Jul 2025 07:27:50 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56H7Rn30029522;
	Thu, 17 Jul 2025 07:27:50 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (cse-cd01-lnx.qualcomm.com [10.64.75.209])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 56H7RmgQ029519
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Jul 2025 07:27:49 +0000
Received: by cse-cd01-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id E8A3D20CAF; Thu, 17 Jul 2025 15:27:47 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
        Tingguo Cheng <quic_tingguoc@quicinc.com>
Subject: [PATCH v2 1/1] arm64: dts: qcom: qcs615: Set LDO12A regulator to HPM to avoid boot hang
Date: Thu, 17 Jul 2025 15:27:46 +0800
Message-Id: <20250717072746.987298-1-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDA2NCBTYWx0ZWRfX7K9LvX4f/Cko
 auYN982UNh+2cpgz6cn0/ECv8V71k+igsCBotfCN0/0FFRmBWCgVTipTlTOUxLUvSoCHtNrmjfN
 uWVHv6pmdNUdrSIFJu/fqZEybVuBxRcg1uVwxmMd/IhU0oJ4wJeWO7l9xNE5kgKrDv8E0H1pQN+
 RuYy6jmWbGAYA8MoFQIuP/XoMnOrtA/mjVosi3weNFmLiusVOMm62KLM/4wEnGkcknIi/9C6cjP
 TIVvVtx+pF6s6OFa+SiUqlclJoTnr9jGbjbj6KAU6RWlLMlw7StkvVWdZT1HaVjEadasX61eHek
 8BGOHwlU6qoBPdtsww0iPSIYVgGELbjtu4IrX60owWdYT+8gXZejaJ9aXq4ZrRtiREo4fsuOgAc
 xkkdnh1KlucjVH4XcRiLYIJVgFnWEGsAR5r17X7MtC9MCByNf8abScURQngBOqdJGcZNTZ6l
X-Proofpoint-ORIG-GUID: 3xaLGOW8Gc40F4fpnWAo7K_NMNc0-Pa4
X-Proofpoint-GUID: 3xaLGOW8Gc40F4fpnWAo7K_NMNc0-Pa4
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=6878a5f9 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=lOb7t7NH7aykvVN8AcwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_002801_609007_59017D2D 
X-CRM114-Status: GOOD (  12.96  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

RnJvbTogWml5dWUgWmhhbmcgPHppeXVlLnpoYW5nQG9zcy5xdWFsY29tbS5jb20+CgpPbiBjZXJ0
YWluIHBsYXRmb3JtcyAoZS5nLiwgUUNTNjE1KSwgY29uc3VtZXJzIG9mIExETzEyQeKAlHN1Y2gg
YXMgUENJZSwKVUZTLCBhbmQgZU1NQ+KAlG1heSBkcmF3IG1vcmUgdGhhbiAxMG1BIG9mIGN1cnJl
bnQgZHVyaW5nIGJvb3QuIFRoaXMgY2FuCmV4Y2VlZCB0aGUgcmVndWxhdG9yJ3MgbGltaXQgaW4g
TG93IFBvd2VyIE1vZGUgKExQTSksIHRyaWdnZXJpbmcgY3VycmVudApsaW1pdCBwcm90ZWN0aW9u
IGFuZCBjYXVzaW5nIHRoZSBzeXN0ZW0gdG8gaGFuZy4KClRvIGFkZHJlc3MgdGhpcywgdGhlcmUg
YXJlIHR3byBwb3NzaWJsZSBhcHByb2FjaGVzOgphKSBTZXQgdGhlIHJlZ3VsYXRvcidzIGluaXRp
YWwgbW9kZSB0byBIaWdoIFBlcmZvcm1hbmNlIE1vZGUgKEhQTSkgaW4KICAgdGhlIGRldmljZSB0
cmVlLgpiKSBLZWVwIHRoZSBkZWZhdWx0IExQTSBzZXR0aW5nIGFuZCBoYXZlIGVhY2ggY29uc3Vt
ZXIgZHJpdmVyIGV4cGxpY2l0bHkKICAgc2V0IGl0cyBjdXJyZW50IGxvYWQuCgpTaW5jZSBzb21l
IHJlZ3VsYXRvcnMgYXJlIHNoYXJlZCBhbW9uZyBtdWx0aXBsZSBjb25zdW1lcnMsIGFuZCBzZXR0
aW5nCnRoZSBjdXJyZW50IG11c3QgYmUgY29vcmRpbmF0ZWQgYWNyb3NzIGFsbCBvZiB0aGVtLCB3
ZSB3aWxsIGluaXRpYWxseQphZG9wdCBvcHRpb24gYSBieSBzZXR0aW5nIHRoZSByZWd1bGF0b3Ig
dG8gSFBNLiBXZSBjYW4gbGF0ZXIgbWlncmF0ZSB0bwpvcHRpb24gYiB3aGVuIHRoZSB0aW1pbmcg
aXMgYXBwcm9wcmlhdGUgYW5kIGFsbCBjb25zdW1lciBkcml2ZXJzIGFyZQpyZWFkeS4KClNpZ25l
ZC1vZmYtYnk6IFppeXVlIFpoYW5nIDx6aXl1ZS56aGFuZ0Bvc3MucXVhbGNvbW0uY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBUaW5nZ3VvIENoZW5nIDxxdWljX3RpbmdndW9jQHF1aWNpbmMuY29tPgotLS0K
VGhpcyBwYXRjaCBmb2xsb3dzIGEgc3VnZ2VzdGlvbiBmcm9tIEJqb3JuIEFuZGVyc3NvbiByZWdh
cmRpbmcgVVNCCnJlZ3VsYXRvciBoYW5kbGluZyB3aGVyZSBlYWNoIGNvbnN1bWVyIGlzIGV4cGVj
dGVkIHRvIGV4cGxpY2l0bHkgc2V0IGl0cwpjdXJyZW50IGxvYWQuCkxpbms6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xpbnV4LWFybS1tc20vMzdmYzdhYTYtMjNkMi00NjM2LThlMDItNDk1NzAx
OTEyMWEzQHF1aWNpbmMuY29tLwoKY2hhbmdlcyBpbiB2MjoKIC0gRGVsZXRlIGFsbCBMUE0gbW9k
ZSBjb25maWcgaW4gbGRvMTJhLCB3aGljaCBtYXkgbGVhZCB0byBwb3RlbnRpYWwKICAgcmlza3MK
IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNzE2MDMwNjAx
LjE3MDUzNjQtMS16aXl1ZS56aGFuZ0Bvc3MucXVhbGNvbW0uY29tLwotLS0KIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9xY3M2MTUtcmlkZS5kdHMgfCA1ICstLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL3FjczYxNS1yaWRlLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9x
Y3M2MTUtcmlkZS5kdHMKaW5kZXggYTY2NTJlNDgxN2QxLi43NWVmZmM3OTBjNzkgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUtcmlkZS5kdHMKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL3FjczYxNS1yaWRlLmR0cwpAQCAtMTY2LDEwICsxNjYsNyBAQCB2
cmVnX2wxMmE6IGxkbzEyIHsKIAkJCXJlZ3VsYXRvci1uYW1lID0gInZyZWdfbDEyYSI7CiAJCQly
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKIAkJCXJlZ3VsYXRvci1tYXgtbWlj
cm92b2x0ID0gPDE4OTAwMDA+OwotCQkJcmVndWxhdG9yLWluaXRpYWwtbW9kZSA9IDxSUE1IX1JF
R1VMQVRPUl9NT0RFX0xQTT47Ci0JCQlyZWd1bGF0b3ItYWxsb3ctc2V0LWxvYWQ7Ci0JCQlyZWd1
bGF0b3ItYWxsb3dlZC1tb2RlcyA9IDxSUE1IX1JFR1VMQVRPUl9NT0RFX0xQTQotCQkJCQkJICAg
UlBNSF9SRUdVTEFUT1JfTU9ERV9IUE0+OworCQkJcmVndWxhdG9yLWluaXRpYWwtbW9kZSA9IDxS
UE1IX1JFR1VMQVRPUl9NT0RFX0hQTT47CiAJCX07CiAKIAkJdnJlZ19sMTNhOiBsZG8xMyB7Ci0t
IAoyLjM0LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
