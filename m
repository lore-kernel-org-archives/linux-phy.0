Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22B7AC83F17
	for <linux-phy@archiver.kernel.org>; Wed, 16 Jul 2025 03:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ruC8q19cBjq1QlrOrJ956u6xaQJ4sR0haa9Qv1hSEU=; b=YnSdkqpbJYOXe7
	KOLG+vktNL62ulznmrC0Xu5OwlVVd5rWK5QO5Glzife2xMquTL4bECB+zNJzA49Usr6mUx9xrn0ie
	3d/o5uBw9jKl0rHT6wffhJcfS7fFyUewY24bW4jl+tSuawWueNTJEjNkSbBTxqKTqLQaA2NSsmpIW
	WymezcfSif5I0IQut1UWDvHdOJj5u8lvqN+hZy7KS0kc4QA1r3X7e/N/+x7vS0KukFmC/maEjm9Z4
	YD3u3dG7Pw21vBpNib3XgbWJPkpWqABhsZ3cu5Ajj3r2m5A0+50VC2M7xgk00E+EzwC9WArULFHvi
	KRbOiayUreV2iJmeKN0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubsTT-00000006df5-34d8;
	Wed, 16 Jul 2025 03:06:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubsTQ-00000006ddX-1apq
	for linux-phy@lists.infradead.org;
	Wed, 16 Jul 2025 03:06:25 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FGDU72008226;
	Wed, 16 Jul 2025 03:06:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=YM4m4LvwJpEIvXehHnO+Z9
	OI4GIz8l3zpiUHNdqZPDw=; b=f/Cm3yBOnsfQ6nHMxBkcHS7dIXey6ipeM8VvhD
	Z7wACvSWrDQIYXTzoIic2mkFuK8SFbzqy5bRf3hDc34/w9IRyhOEta2Fi1cHTE30
	bwGyhpLhwObsKIuxzkpElmuJe2LO7n49Sx6t2Hwau9eLy2hP8GNhY4FddCmDzg94
	iS4bwn9M2eSEeSaJq4kNpb6bwddwQEkbPV90BzblV5ah8IQx8Hy+c6sOoFZt2aBU
	JT/xGbx+H44eYK5m04BwdsZN0gbpvH4Y52y7DTCjH+aZa25ENoLwQVBtfvYeXXYm
	YkOP2ic+5zOjOnxEX5J4O+oolQ4gzCaGpSO8o0ESNdR9vIhg==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wnh5tfqd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 16 Jul 2025 03:06:13 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 56G36BsF018523;
	Wed, 16 Jul 2025 03:06:11 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 47ugsmhveh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 16 Jul 2025 03:06:11 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56G36BuD018518;
	Wed, 16 Jul 2025 03:06:11 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (cse-cd01-lnx.qualcomm.com [10.64.75.209])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 56G36ANd018476
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 16 Jul 2025 03:06:11 +0000
Received: by cse-cd01-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id CC98F2122F; Wed, 16 Jul 2025 11:06:09 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
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
Subject: [PATCH v1 1/1] arm64: dts: qcom: qcs615: Set LDO12A regulator to HPM to avoid boot hang
Date: Wed, 16 Jul 2025 11:06:01 +0800
Message-Id: <20250716030601.1705364-1-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=dKimmPZb c=1 sm=1 tr=0 ts=68771725 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=ae3z3FTj68mGPq7uMvUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 7NYoC0pDTzXfesvzBybFEgEklgYO2ZeW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDAyNyBTYWx0ZWRfX4X0cQHxWGj4q
 XkHVzEkBuBdsXGMEXqODLnR88M2hLK0mJhINAZRZElv6t4uDforEm+VsJYzGlBLvUE/TJa/WWDX
 hBKLk1NRS3bViNMvPHJ3XK9TGsxLQRjWHeSN6jhxznkGcA++ugD77/FDblJaFbkyRzSHmGTl90r
 cRQIXWCmGFBfU9yGbMBPd3i4UNibvsYTWANWfPr6jjA6S4dEikj8SOKaNm7mp55NxFbLfzzXP9y
 i8W2IWQr5XclWKUCNhk15iYMPCwRaDHX6xGu8sSuqmZvLrQmaNKKZRy1Ewam2DubGOOjmHAQkJE
 GzzhULZka8tL60ubAKB6lAKhcs/BRV0oB1gGGDyhQxxOr2Fv+HxqzYlF4Qf7aEo6sfvo6HRnvrK
 iU834tHm81vV03X6uPCBONwSNVnv96Jkbv6sazs0dz8U9oNsZlD8M056w1uvvQhxZuyvQgxn
X-Proofpoint-ORIG-GUID: 7NYoC0pDTzXfesvzBybFEgEklgYO2ZeW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_01,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 mlxlogscore=999 mlxscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_200624_435627_37B73677 
X-CRM114-Status: GOOD (  14.07  )
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

T24gY2VydGFpbiBwbGF0Zm9ybXMgKGUuZy4sIFFDUzYxNSksIGNvbnN1bWVycyBvZiBMRE8xMkHi
gJRzdWNoIGFzIFBDSWUsClVGUywgYW5kIGVNTUPigJRtYXkgZHJhdyBtb3JlIHRoYW4gMTBtQSBv
ZiBjdXJyZW50IGR1cmluZyBib290LiBUaGlzIGNhbgpleGNlZWQgdGhlIHJlZ3VsYXRvcidzIGxp
bWl0IGluIExvdyBQb3dlciBNb2RlIChMUE0pLCB0cmlnZ2VyaW5nIGN1cnJlbnQKbGltaXQgcHJv
dGVjdGlvbiBhbmQgY2F1c2luZyB0aGUgc3lzdGVtIHRvIGhhbmcuCgpUbyBhZGRyZXNzIHRoaXMs
IHRoZXJlIGFyZSB0d28gcG9zc2libGUgYXBwcm9hY2hlczoKYSkgU2V0IHRoZSByZWd1bGF0b3In
cyBpbml0aWFsIG1vZGUgdG8gSGlnaCBQZXJmb3JtYW5jZSBNb2RlIChIUE0pIGluCiAgIHRoZSBk
ZXZpY2UgdHJlZS4KYikgS2VlcCB0aGUgZGVmYXVsdCBMUE0gc2V0dGluZyBhbmQgaGF2ZSBlYWNo
IGNvbnN1bWVyIGRyaXZlciBleHBsaWNpdGx5CiAgIHNldCBpdHMgY3VycmVudCBsb2FkLgoKU2lu
Y2Ugc29tZSByZWd1bGF0b3JzIGFyZSBzaGFyZWQgYW1vbmcgbXVsdGlwbGUgY29uc3VtZXJzLCBh
bmQgc2V0dGluZwp0aGUgY3VycmVudCBtdXN0IGJlIGNvb3JkaW5hdGVkIGFjcm9zcyBhbGwgb2Yg
dGhlbSwgd2Ugd2lsbCBpbml0aWFsbHkKYWRvcHQgb3B0aW9uIGEgYnkgc2V0dGluZyB0aGUgcmVn
dWxhdG9yIHRvIEhQTS4gV2UgY2FuIGxhdGVyIG1pZ3JhdGUgdG8Kb3B0aW9uIGIgd2hlbiB0aGUg
dGltaW5nIGlzIGFwcHJvcHJpYXRlIGFuZCBhbGwgY29uc3VtZXIgZHJpdmVycyBhcmUKcmVhZHku
CgpTaWduZWQtb2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8eml5dWUuemhhbmdAb3NzLnF1YWxjb21tLmNv
bT4KU2lnbmVkLW9mZi1ieTogVGluZ2d1byBDaGVuZyA8cXVpY190aW5nZ3VvY0BxdWljaW5jLmNv
bT4KLS0tClRoaXMgcGF0Y2ggZm9sbG93cyBhIHN1Z2dlc3Rpb24gZnJvbSBCam9ybiBBbmRlcnNz
b24gcmVnYXJkaW5nIFVTQgpyZWd1bGF0b3IgaGFuZGxpbmcgd2hlcmUgZWFjaCBjb25zdW1lciBp
cyBleHBlY3RlZCB0byBleHBsaWNpdGx5IHNldCBpdHMKY3VycmVudCBsb2FkLgpMaW5rOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0tbXNtLzM3ZmM3YWE2LTIzZDItNDYzNi04ZTAy
LTQ5NTcwMTkxMjFhM0BxdWljaW5jLmNvbS8KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
cWNzNjE1LXJpZGUuZHRzIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczYx
NS1yaWRlLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUtcmlkZS5kdHMKaW5k
ZXggYTY2NTJlNDgxN2QxLi43NjM5NjM1YzY3YzQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9xY3M2MTUtcmlkZS5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L3FjczYxNS1yaWRlLmR0cwpAQCAtMTY2LDcgKzE2Niw3IEBAIHZyZWdfbDEyYTogbGRvMTIgewog
CQkJcmVndWxhdG9yLW5hbWUgPSAidnJlZ19sMTJhIjsKIAkJCXJlZ3VsYXRvci1taW4tbWljcm92
b2x0ID0gPDE4MDAwMDA+OwogCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTg5MDAwMD47
Ci0JCQlyZWd1bGF0b3ItaW5pdGlhbC1tb2RlID0gPFJQTUhfUkVHVUxBVE9SX01PREVfTFBNPjsK
KwkJCXJlZ3VsYXRvci1pbml0aWFsLW1vZGUgPSA8UlBNSF9SRUdVTEFUT1JfTU9ERV9IUE0+Owog
CQkJcmVndWxhdG9yLWFsbG93LXNldC1sb2FkOwogCQkJcmVndWxhdG9yLWFsbG93ZWQtbW9kZXMg
PSA8UlBNSF9SRUdVTEFUT1JfTU9ERV9MUE0KIAkJCQkJCSAgIFJQTUhfUkVHVUxBVE9SX01PREVf
SFBNPjsKLS0gCjIuMzQuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
