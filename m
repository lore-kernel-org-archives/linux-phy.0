Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0C26CA1000
	for <linux-phy@archiver.kernel.org>; Sat, 30 Aug 2025 07:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyW18r0CH1oyxfzW48fwt23M1RY3HBLcqCYrtcrFHOo=; b=yqcp2EjSo0hpXE
	Yzvd05RLRfGekxdTIsbjkZkJFQuRx6Tbg7NyJrC3pduhHssCCKvkTnNYZFkqWcXE5TDoe7FDb1cWy
	P/64gzhtPo96L52CAWvgntgxXCh9rdesfm3RFutOQUQ9aLreUeW1Y/sKXPFceGxMiYDT4MHEHkHPV
	tKH7c7xQQbfnJqzCIaDB5l8GFWo4mcPN1XwEX0vgvM8h8A920+2CPKvwET4PsULGDzzzzq64YX5sG
	9I/tkBA0wMgcQ1RHaz2kBmrO3OY/SsMRL6NwM8xqoaQ6spVbBF+fI3Lj27PyXfEZZxAjpkcJPnriu
	qMhBmeDJOdTmP4YeoucQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usFd9-00000007WYT-1H2u;
	Sat, 30 Aug 2025 07:04:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usFd7-00000007WXJ-0VUh
	for linux-phy@lists.infradead.org;
	Sat, 30 Aug 2025 07:04:06 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57U2Xl2x024950;
	Sat, 30 Aug 2025 07:04:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	phxCywWoGJdDhqmCyk6g26vMofsUa7gi5p5koR15iBA=; b=jkVAHpuRGfwYUPKK
	RJvEBZXW5Eudc+JVn6on4Zn/vaiclZn4iDHDy7FD7oHZ4yyxKzoBb7hR1PW5HoJV
	z9AjEDb4BqnQBujqYPXRh3ELH99IQlvu2JLoWqieiD6lINy11zxPc+Zk5+LYrUEo
	VqZ/at7kTkWe4GTHurRU9dsXMDZk/N3MCxn90ce6JIalAKpftN1vjOXyOM9g4Kmy
	e+wHiy91uNlM2DRlhBGj7Sxwclwq5rLaf+1eNUUps19/tBBHKtK7wMWh/mzP63CQ
	aS078qtFt++7VOPJlJqvPx+JrqTGSFuCqFekMN8O/9/A3gfqPMBayI8p20tupGZu
	om3UoQ==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmj89yg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 30 Aug 2025 07:04:00 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 57U73v5B001761;
	Sat, 30 Aug 2025 07:03:57 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 48utckgbyk-1;
	Sat, 30 Aug 2025 07:03:57 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 57U73veG001756;
	Sat, 30 Aug 2025 07:03:57 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 57U73uQS001755;
	Sat, 30 Aug 2025 07:03:57 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 4D3D56009E0; Sat, 30 Aug 2025 12:33:56 +0530 (+0530)
From: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org,
        neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V4 1/2] phy: qcom-qmp-ufs: Add regulator load voting for UFS QMP PHY
Date: Sat, 30 Aug 2025 12:33:52 +0530
Message-ID: <20250830070353.2694-2-nitin.rawat@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250830070353.2694-1-nitin.rawat@oss.qualcomm.com>
References: <20250830070353.2694-1-nitin.rawat@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b2a260 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=tKL6smffEGmnvWNMxd4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: J8R3lVCeyPIbGmLYjXg55GoFf-VzKTR1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX7t6zoMdjqTca
 Pq16zmi/O7NZbUP5lAABckDvv/NbTNtHfdTC7MoEX0GkxCTWEIu1qZlZe/hlGckOlkCzGFbo1FL
 p6luWKPgJWnsUfw38CZ9ZogDKsyUYJaA31DKS0uOj6IR+3RIEJGblC8boNvZoftY/KHN/K3S7F9
 V+IT2H0FGquuEEmYcC6N/hFxMF9KK+2HdEw11EQP5+AxGii4rPD4ma7wm3nO+ArjZSPz0QsJx9I
 +hwxv/50mj9pblWGdQmVHnM78/Eir0Rckd6Z5AuTWMLgxUn4C+0mZ0aeC3fs4hluaPoT8e8jQC1
 2k6VF6FSBLoW5K5Iu3TYw18bStMrwzNVsQeb6quV5K16TMfFGon1pHdO1O0U9TC6yoIFl+ZzaKR
 5JnYnXx8
X-Proofpoint-ORIG-GUID: J8R3lVCeyPIbGmLYjXg55GoFf-VzKTR1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-30_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1011 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_000405_279459_1889CA87 
X-CRM114-Status: GOOD (  17.86  )
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

RnJvbTogTml0aW4gUmF3YXQgPHF1aWNfbml0aXJhd2FAcXVpY2luYy5jb20+CgpPbiBjZXJ0YWlu
IFNvQ3MsIHBvd2VyIHJlZ3VsYXRvcnMgYXJlIHNoYXJlZCBiZXR3ZWVuIHRoZSBRTVAgVUZTIFBI
WQphbmQgb3RoZXIgSVAgYmxvY2tzLiBUbyBlbnN1cmUgcHJvcGVyIG9wZXJhdGlvbiwgdGhlIHJl
Z3VsYXRvcgpmcmFtZXdvcmsgbXVzdCBiZSBpbmZvcm1lZCBvZiB0aGUgVUZTIFBIWSdzIGxvYWQg
cmVxdWlyZW1lbnRzLgpUaGlzIGlzIGVzc2VudGlhbCBiZWNhdXNlIHRoZSByZWd1bGF0b3IncyBv
cGVyYXRpbmcgbW9kZeKAlHdoZXRoZXIgTG93ClBvd2VyIG9yIEhpZ2ggUG93ZXLigJRkZXBlbmRz
IG9uIHRoZSBtYXhpbXVtIGV4cGVjdGVkIGxvYWQgYXQgYW55IGdpdmVuCnRpbWUsIHdoaWNoIHRo
ZSByZWd1bGF0b3IgZHJpdmVyIG5lZWRzIHRvIG1hbmFnZSBhY2NvcmRpbmdseS4KClRvIHN1cHBv
cnQgdGhpcywgcmVwbGFjZSBkZXZtX3JlZ3VsYXRvcl9idWxrX2dldCgpIHdpdGgKZGV2bV9yZWd1
bGF0b3JfYnVsa19nZXRfY29uc3QoKSBhbmQgaW5saW5lIHRoZSBxbXBfdWZzX3ZyZWdfaW5pdCgp
CmZ1bmN0aW9uLiBhZGRpdGlvbmFsbHkgcmVwbGFjZSB0aGUgYXJyYXkgb2YgcmVndWxhdG9yIG5h
bWVzIHdpdGggYQpidWxrIHJlZ3VsYXRvciBkYXRhIHN0cnVjdHVyZSwgYW5kIHV0aWxpemUgdGhl
IGluaXRfbG9hZF91QSBmaWVsZApwcm92aWRlZCBieSB0aGUgcmVndWxhdG9yIGZyYW1ld29yay4g
VGhpcyBlbnN1cmVzIHRoYXQKcmVndWxhdG9yX3NldF9sb2FkKCkgaXMgYXV0b21hdGljYWxseSBp
bnZva2VkIGJlZm9yZSB0aGUKZmlyc3QgZW5hYmxlIG9wZXJhdGlvbi4KClJldmlld2VkLWJ5OiBN
YW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9yZz4KUmV2aWV3ZWQtYnk6IERtaXRy
eSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4KU2lnbmVkLW9m
Zi1ieTogTml0aW4gUmF3YXQgPHF1aWNfbml0aXJhd2FAcXVpY2luYy5jb20+Ci0tLQogZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIHwgMjkgKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIGIv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCmluZGV4IDljNjljNzdkMTBj
OC4uYWFhODhjYTBlZjA3IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNv
bS1xbXAtdWZzLmMKKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5j
CkBAIC0xMTA3LDcgKzExMDcsNyBAQCBzdHJ1Y3QgcW1wX3BoeV9jZmcgewogCWNvbnN0IHN0cnVj
dCBxbXBfcGh5X2NmZ190YmxzIHRibHNfaHNfb3ZlcmxheVtOVU1fT1ZFUkxBWV07CgogCS8qIHJl
Z3VsYXRvcnMgdG8gYmUgcmVxdWVzdGVkICovCi0JY29uc3QgY2hhciAqIGNvbnN0ICp2cmVnX2xp
c3Q7CisJY29uc3Qgc3RydWN0IHJlZ3VsYXRvcl9idWxrX2RhdGEgKnZyZWdfbGlzdDsKIAlpbnQg
bnVtX3ZyZWdzOwoKIAkvKiBhcnJheSBvZiByZWdpc3RlcnMgd2l0aCBkaWZmZXJlbnQgb2Zmc2V0
cyAqLwpAQCAtMTE2NCw5ICsxMTY0LDEwIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBxcGh5X2NscmJp
dHModm9pZCBfX2lvbWVtICpiYXNlLCB1MzIgb2Zmc2V0LCB1MzIgdmFsKQogCXJlYWRsKGJhc2Ug
KyBvZmZzZXQpOwogfQoKLS8qIGxpc3Qgb2YgcmVndWxhdG9ycyAqLwotc3RhdGljIGNvbnN0IGNo
YXIgKiBjb25zdCBxbXBfcGh5X3ZyZWdfbFtdID0gewotCSJ2ZGRhLXBoeSIsICJ2ZGRhLXBsbCIs
CisvKiBEZWZhdWx0IHJlZ3VsYXRvciBidWxrIGRhdGEgKG5vIGxvYWQgdXNlZCkgKi8KK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgcmVndWxhdG9yX2J1bGtfZGF0YSBxbXBfcGh5X3ZyZWdfbFtdID0gewor
CXsgLnN1cHBseSA9ICJ2ZGRhLXBoeSIgfSwKKwl7IC5zdXBwbHkgPSAidmRkYS1wbGwiIH0sCiB9
OwoKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3Vmc19vZmZzZXRzIHFtcF91ZnNfb2Zmc2V0cyA9
IHsKQEAgLTE4OTAsMjIgKzE4OTEsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBoeV9vcHMgcWNv
bV9xbXBfdWZzX3BoeV9vcHMgPSB7CiAJLm93bmVyCQk9IFRISVNfTU9EVUxFLAogfTsKCi1zdGF0
aWMgaW50IHFtcF91ZnNfdnJlZ19pbml0KHN0cnVjdCBxbXBfdWZzICpxbXApCi17Ci0JY29uc3Qg
c3RydWN0IHFtcF9waHlfY2ZnICpjZmcgPSBxbXAtPmNmZzsKLQlzdHJ1Y3QgZGV2aWNlICpkZXYg
PSBxbXAtPmRldjsKLQlpbnQgbnVtID0gY2ZnLT5udW1fdnJlZ3M7Ci0JaW50IGk7Ci0KLQlxbXAt
PnZyZWdzID0gZGV2bV9rY2FsbG9jKGRldiwgbnVtLCBzaXplb2YoKnFtcC0+dnJlZ3MpLCBHRlBf
S0VSTkVMKTsKLQlpZiAoIXFtcC0+dnJlZ3MpCi0JCXJldHVybiAtRU5PTUVNOwotCi0JZm9yIChp
ID0gMDsgaSA8IG51bTsgaSsrKQotCQlxbXAtPnZyZWdzW2ldLnN1cHBseSA9IGNmZy0+dnJlZ19s
aXN0W2ldOwotCi0JcmV0dXJuIGRldm1fcmVndWxhdG9yX2J1bGtfZ2V0KGRldiwgbnVtLCBxbXAt
PnZyZWdzKTsKLX0KCiBzdGF0aWMgaW50IHFtcF91ZnNfY2xrX2luaXQoc3RydWN0IHFtcF91ZnMg
KnFtcCkKIHsKQEAgLTIwNjgsNyArMjA1Myw5IEBAIHN0YXRpYyBpbnQgcW1wX3Vmc19wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7Cgot
CXJldCA9IHFtcF91ZnNfdnJlZ19pbml0KHFtcCk7CisJcmV0ID0gZGV2bV9yZWd1bGF0b3JfYnVs
a19nZXRfY29uc3QoZGV2LCBxbXAtPmNmZy0+bnVtX3ZyZWdzLAorCQkJCQkgICAgcW1wLT5jZmct
PnZyZWdfbGlzdCwKKwkJCQkJICAgICZxbXAtPnZyZWdzKTsKIAlpZiAocmV0KQogCQlyZXR1cm4g
cmV0OwoKLS0KMi41MC4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
