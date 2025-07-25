Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31105C87FCE
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 09:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1A2+vpf5fJRiGoe9e0iIG5a6WBgHc2JVgMrAQBxJ3o=; b=X5fdVxajZtoClb
	JhuIZvZSAGYRYEl/jx0gbVGrQYyjC6co093QC8A/QH5owPkcAdvGSlI/yZnc6mjp+U5TOkA4yfEEW
	cdXR6ZoFprvkz3u2ZonBlD3OV49RmibSYxj9MjyjPlnAwkoggjkEaeWP/NY3oJRexu/eukhb0JIkX
	/0V4ovJPPUy3EeFigpH/GIssDW/GUwqiqSoPUzxD5ANy8eKr3FJP1dp70hTj0JdEipxLopQd7DODI
	PpDe6wD9WnwBGaSIPuaewi3nvP3InN1vHXv1Eq021EGRrsR7joHix9KneMbRyN0fHAqmd88HfFN6X
	PX5ndyqhRJYy2TuaFwaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufF7O-00000009UdX-3x1V;
	Fri, 25 Jul 2025 09:53:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufF7M-00000009UbJ-1nxt
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 09:53:33 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P8ZEQv015331;
	Fri, 25 Jul 2025 09:53:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YJ9QlUzgzZXAp2fSa1A+U0eHeKeBWWmFU68JYNEh+X8=; b=JptcL0p9KkuWy4Gv
	1bjiV/k8u/X7k0Q7HjGaTsYvsHh4qaax+PPWwqVZVjGAmJxOKTdeaOJfRc3ixneA
	5L38QZ2MIr8Q+5Jv1ZbEr+XEziJ9R/K3cML9KZNP+SRmqN2SvuaP6V0ZmY3NlLu2
	asjGts5zBRqNh11c23xIh88hkzOmEpsPvAmJbv7piDTM+mjCJVvibudKhNM7AYMO
	Cwas24zi333dtLDxCx/HZ+XOrWOpgn0vS9f7I59rmLEctKktz87vkO29zZpomOax
	ucfmYMuUJtveeMOfV5R5bkH1glg5bni9eiVtqIldCggs+p+zHW3n5u9b9eFcZs6v
	5WMH6A==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2qhmyb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Jul 2025 09:53:21 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 56P9rJYt030905;
	Fri, 25 Jul 2025 09:53:19 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 4804emsuvt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Jul 2025 09:53:19 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56P9rJwl030897;
	Fri, 25 Jul 2025 09:53:19 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (cse-cd01-lnx.qualcomm.com [10.64.75.209])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 56P9rIu7030894
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Jul 2025 09:53:19 +0000
Received: by cse-cd01-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 090B3210DE; Fri, 25 Jul 2025 17:53:18 +0800 (CST)
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
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v6 2/3] arm64: dts: qcom: sa8775p: remove aux clock from pcie phy
Date: Fri, 25 Jul 2025 17:53:01 +0800
Message-Id: <20250725095302.3408875-3-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250725095302.3408875-1-ziyue.zhang@oss.qualcomm.com>
References: <20250725095302.3408875-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=RbqQC0tv c=1 sm=1 tr=0 ts=68835411 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=EluF0xcg-2KMSqT-UJQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA4NCBTYWx0ZWRfXxCw+gnq0iYet
 Gs4OSmsRdoWzyeOTE0oirtUVdwoPKvKygQIeFr/iX0l1Uww5ABbYpiiFHeDLi0YFCbvjWf00FX9
 T1rChNad340HS40wJzVM/PIZbSJaE3GbureesUcb0vRqIXs8Dt1OoKWFIc797+tko8tRTcr4dWa
 dvSosZKcsGOwFduIJgxqDuzOp6bwVIoJuR9066ZrhGkwokUj1+L/9icLDAvCmI0ep8nP9XpTv13
 sGXGR1TrO2oOsrrS2ipWhJ2xl7BRLCTzokbkRkgNnJQt7Ln+RreofRQZ+ZR76lAwrl+xW4sWpVc
 SaAc17S91sTzmUaM7S8tKCuEUOOZcBRb/frd6fkZ1ZAsVSWBQ+S+Y9H4Wdk1atRIUEYz/y5h7Tu
 QPlDQ+V8VF8KzLkn8pUXy1BruLSDfbVUIQmaB+/Raird+3cimZC9FCDvlYJ5EwMichgutGpO
X-Proofpoint-GUID: -8JBj7VUZaZQrzYXFYKttEr1qrIkx3iP
X-Proofpoint-ORIG-GUID: -8JBj7VUZaZQrzYXFYKttEr1qrIkx3iP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999
 priorityscore=1501 malwarescore=0 impostorscore=0 mlxscore=0 adultscore=0
 phishscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507250084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_025332_475736_DE380304 
X-CRM114-Status: GOOD (  11.63  )
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

VGhlIGdjY19hdXhfY2xrIGlzIHVzZWQgYnkgdGhlIFBDSWUgUm9vdCBDb21wbGV4IChSQykgYW5k
IGlzIG5vdCByZXF1aXJlZApieSB0aGUgUEhZLiBUaGUgY29ycmVjdCBjbG9jayBmb3IgdGhlIFBI
WSBpcyBnY2NfcGh5X2F1eF9jbGssIHdoaWNoIHRoaXMKcGF0Y2ggdXNlcyB0byByZXBsYWNlIHRo
ZSBpbmNvcnJlY3QgcmVmZXJlbmNlLgoKVGhlIGRpc3RpbmN0aW9uIGJldHdlZW4gQVVYX0NMSyBh
bmQgUEhZX0FVWF9DTEsgaXMgaW1wb3J0YW50OiBBVVhfQ0xLIGlzCnR5cGljYWxseSB1c2VkIGJ5
IHRoZSBjb250cm9sbGVyLCB3aGlsZSBQSFlfQVVYX0NMSyBpcyByZXF1aXJlZCBieSBjZXJ0YWlu
ClBIWXPigJRwYXJ0aWN1bGFybHkgR2VuNCBRTVAgUEhZc+KAlGZvciBpbnRlcm5hbCBvcGVyYXRp
b25zIHN1Y2ggYXMgY2xvY2sKZ2F0aW5nIGFuZCBwb3dlciBtYW5hZ2VtZW50LiBTb21lIG5vbi1H
ZW40IFF1YWxjb21tIFBIWXMgYWxzbyB1c2UKUEhZX0FVWF9DTEssIGJ1dCB0aGV5IGRvIG5vdCBy
ZXF1aXJlIEFVWF9DTEsuCgpUaGlzIGNoYW5nZSBlbnN1cmVzIHByb3BlciBjbG9jayBjb25maWd1
cmF0aW9uIGFuZCBhdm9pZHMgdW5uZWNlc3NhcnkKZGVwZW5kZW5jaWVzLgoKU2lnbmVkLW9mZi1i
eTogWml5dWUgWmhhbmcgPHppeXVlLnpoYW5nQG9zcy5xdWFsY29tbS5jb20+Ci0tLQogYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL3NhODc3NXAuZHRzaSB8IDI4ICsrKysrKysrKysrKysrKy0tLS0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYTg3NzVwLmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1cC5kdHNpCmluZGV4IDk5OTdhMjk5MDFmNS4u
MzlhNGY1OWQ4OTI1IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2E4Nzc1
cC5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYTg3NzVwLmR0c2kKQEAgLTc3
MDcsMTYgKzc3MDcsMTggQEAgcGNpZTBfcGh5OiBwaHlAMWMwNDAwMCB7CiAJCWNvbXBhdGlibGUg
PSAicWNvbSxzYTg3NzVwLXFtcC1nZW40eDItcGNpZS1waHkiOwogCQlyZWcgPSA8MHgwIDB4MWMw
NDAwMCAweDAgMHgyMDAwPjsKIAotCQljbG9ja3MgPSA8JmdjYyBHQ0NfUENJRV8wX0FVWF9DTEs+
LAorCQljbG9ja3MgPSA8JmdjYyBHQ0NfUENJRV8wX1BIWV9BVVhfQ0xLPiwKIAkJCSA8JmdjYyBH
Q0NfUENJRV8wX0NGR19BSEJfQ0xLPiwKIAkJCSA8JmdjYyBHQ0NfUENJRV9DTEtSRUZfRU4+LAog
CQkJIDwmZ2NjIEdDQ19QQ0lFXzBfUEhZX1JDSE5HX0NMSz4sCiAJCQkgPCZnY2MgR0NDX1BDSUVf
MF9QSVBFX0NMSz4sCi0JCQkgPCZnY2MgR0NDX1BDSUVfMF9QSVBFRElWMl9DTEs+LAotCQkJIDwm
Z2NjIEdDQ19QQ0lFXzBfUEhZX0FVWF9DTEs+OwotCi0JCWNsb2NrLW5hbWVzID0gImF1eCIsICJj
ZmdfYWhiIiwgInJlZiIsICJyY2huZyIsICJwaXBlIiwKLQkJCSAgICAgICJwaXBlZGl2MiIsICJw
aHlfYXV4IjsKKwkJCSA8JmdjYyBHQ0NfUENJRV8wX1BJUEVESVYyX0NMSz47CisJCWNsb2NrLW5h
bWVzID0gImF1eCIsCisJCQkgICAgICAiY2ZnX2FoYiIsCisJCQkgICAgICAicmVmIiwKKwkJCSAg
ICAgICJyY2huZyIsCisJCQkgICAgICAicGlwZSIsCisJCQkgICAgICAicGlwZWRpdjIiOwogCiAJ
CWFzc2lnbmVkLWNsb2NrcyA9IDwmZ2NjIEdDQ19QQ0lFXzBfUEhZX1JDSE5HX0NMSz47CiAJCWFz
c2lnbmVkLWNsb2NrLXJhdGVzID0gPDEwMDAwMDAwMD47CkBAIC03ODczLDE2ICs3ODc1LDE4IEBA
IHBjaWUxX3BoeTogcGh5QDFjMTQwMDAgewogCQljb21wYXRpYmxlID0gInFjb20sc2E4Nzc1cC1x
bXAtZ2VuNHg0LXBjaWUtcGh5IjsKIAkJcmVnID0gPDB4MCAweDFjMTQwMDAgMHgwIDB4NDAwMD47
CiAKLQkJY2xvY2tzID0gPCZnY2MgR0NDX1BDSUVfMV9BVVhfQ0xLPiwKKwkJY2xvY2tzID0gPCZn
Y2MgR0NDX1BDSUVfMV9QSFlfQVVYX0NMSz4sCiAJCQkgPCZnY2MgR0NDX1BDSUVfMV9DRkdfQUhC
X0NMSz4sCiAJCQkgPCZnY2MgR0NDX1BDSUVfQ0xLUkVGX0VOPiwKIAkJCSA8JmdjYyBHQ0NfUENJ
RV8xX1BIWV9SQ0hOR19DTEs+LAogCQkJIDwmZ2NjIEdDQ19QQ0lFXzFfUElQRV9DTEs+LAotCQkJ
IDwmZ2NjIEdDQ19QQ0lFXzFfUElQRURJVjJfQ0xLPiwKLQkJCSA8JmdjYyBHQ0NfUENJRV8xX1BI
WV9BVVhfQ0xLPjsKLQotCQljbG9jay1uYW1lcyA9ICJhdXgiLCAiY2ZnX2FoYiIsICJyZWYiLCAi
cmNobmciLCAicGlwZSIsCi0JCQkgICAgICAicGlwZWRpdjIiLCAicGh5X2F1eCI7CisJCQkgPCZn
Y2MgR0NDX1BDSUVfMV9QSVBFRElWMl9DTEs+OworCQljbG9jay1uYW1lcyA9ICJhdXgiLAorCQkJ
ICAgICAgImNmZ19haGIiLAorCQkJICAgICAgInJlZiIsCisJCQkgICAgICAicmNobmciLAorCQkJ
ICAgICAgInBpcGUiLAorCQkJICAgICAgInBpcGVkaXYyIjsKIAogCQlhc3NpZ25lZC1jbG9ja3Mg
PSA8JmdjYyBHQ0NfUENJRV8xX1BIWV9SQ0hOR19DTEs+OwogCQlhc3NpZ25lZC1jbG9jay1yYXRl
cyA9IDwxMDAwMDAwMDA+OwotLSAKMi4zNC4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
