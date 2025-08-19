Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04E6ECA0EF7
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 23:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lt005u2jQw8q4p1QpZLEWz0XGvdDDuJzpiGUiNCvH5M=; b=BYjNQJb5VWdC+5
	xLe4PlYZ6LKozPiQy2Arj4TpQ/AwSzDy8gWww+oSYhxn14zoXxdM6mAPXgHHT9AWWjlRLHYAog+qw
	LVWJXbc6SbN8ctL7pmBddM02fRxYCProQx50UwuJ+lNxa76FMAocm6lDotE6cAC482MxYKi2xtPVl
	zZKdtNVzHrE7mjQISFeiKOe442YKH02CeeD7DvZukyQMePbmy4wmuw0AaVk7wBcvpeedo4VplbPdq
	3o9vUGsr3PNEsCDnPay8NggKgPTIjIte4ww2cIgoaTz6s+Qsby282bUJYTJhWSx2tyaYIgdwXlIoN
	cPjYRPZ7XL1RlEDudB4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoVyk-0000000Bsf1-3Fdv;
	Tue, 19 Aug 2025 23:42:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoUov-0000000BjWm-2zFg
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 22:28:46 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JL0uEe030303;
	Tue, 19 Aug 2025 22:28:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+NWe03C1skFW2diqkMED/B2sh4aY4DN5Sx/RZ9pwOfM=; b=EKDWa+gny5dDfEvm
	wXFTIUtFLqhAlbGDXPUrDd95NPEvzfkOO/0zJ7/vVwQACWeTjsfbvHCnrHbG52gt
	p8iH3IFlBOKb30aIGmrso0Xqpr3NExMJOIbHJqpShF/YW16kHG7M0KzMck1efk+B
	xTw63pVjr7ATV1EQs+W5OnPm0gWbsczp+SktYPT6SCWnPhxP3ptcj/eJ5Ps4AGkr
	VkiHDliEV9t6gh5MVRhkpCaQfC5rXd2suYFgUxRI2b5+olUORtrm3HtbyCQsgdYb
	B5HU4005NG55QspBRXSkHEySDDGIbu2GQdbrPp30bMe+/kr3sBcmPb0VfqrYzoFK
	+oVSRw==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n0tdr51p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Aug 2025 22:28:41 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 57JMScDW008406;
	Tue, 19 Aug 2025 22:28:38 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 48jk2krc2p-1;
	Tue, 19 Aug 2025 22:28:38 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 57JMScsa008398;
	Tue, 19 Aug 2025 22:28:38 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 57JMScse008397;
	Tue, 19 Aug 2025 22:28:38 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 68CDF57363A; Wed, 20 Aug 2025 03:58:37 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V3 1/2] phy: qcom-qmp-ufs: Add regulator load voting for UFS QMP PHY
Date: Wed, 20 Aug 2025 03:58:25 +0530
Message-ID: <20250819222832.8471-2-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
References: <20250819222832.8471-1-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=a4RpNUSF c=1 sm=1 tr=0 ts=68a4fa99 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=tKL6smffEGmnvWNMxd4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22
 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-ORIG-GUID: gzTP3cwMlR_9qgy6VEpk6PJEn4r5FBuO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE5MDE5NiBTYWx0ZWRfX1pEEIJ5tJWlw
 ql51eXwWy53sq1i6xDxYQuV0ArEvQNdE08Kfs27uPyLuk/ByJy4P/DIIMtjFjH2UQqu8jEx7eiJ
 dF+Ky1xNDXwf7v6VksyWBxtb0iM671OOPS/F822rj3l3rFRY+yPSVEoTElJ6E4rLHHw74BrWKfD
 YP5KpjLhoMB6qZ2ZGyF7DKEczsRrs8G9eK61TzoYT433sCQLYt/zmlK1oFM85YS9lw0XTfo6dQD
 QkK1MuahdlqWUepKKWsi4qLNA9i8qB9M7DYUfhV3zmE1yeJV3eQ7qDkBgt9s8KyVuO9AuJOzva1
 si7J+kwgL9KYmIatncHSkVaMC6eOKH6vXTemFOhGrG3vwY0j08R0vHw0BgHAvBIbf7GDFlDxqT0
 eJzO1W9mQJb4mPMINYutfC3BIcK5/Q==
X-Proofpoint-GUID: gzTP3cwMlR_9qgy6VEpk6PJEn4r5FBuO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_03,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2508110000
 definitions=main-2508190196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_152845_870168_22CD99B7 
X-CRM114-Status: GOOD (  17.95  )
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

T24gY2VydGFpbiBTb0NzLCBwb3dlciByZWd1bGF0b3JzIGFyZSBzaGFyZWQgYmV0d2VlbiB0aGUg
UU1QIFVGUyBQSFkKYW5kIG90aGVyIElQIGJsb2Nrcy4gVG8gZW5zdXJlIHByb3BlciBvcGVyYXRp
b24sIHRoZSByZWd1bGF0b3IKZnJhbWV3b3JrIG11c3QgYmUgaW5mb3JtZWQgb2YgdGhlIFVGUyBQ
SFkncyBsb2FkIHJlcXVpcmVtZW50cy4KVGhpcyBpcyBlc3NlbnRpYWwgYmVjYXVzZSB0aGUgcmVn
dWxhdG9yJ3Mgb3BlcmF0aW5nIG1vZGXigJR3aGV0aGVyIExvdwpQb3dlciBvciBIaWdoIFBvd2Vy
4oCUZGVwZW5kcyBvbiB0aGUgbWF4aW11bSBleHBlY3RlZCBsb2FkIGF0IGFueSBnaXZlbgp0aW1l
LCB3aGljaCB0aGUgcmVndWxhdG9yIGRyaXZlciBuZWVkcyB0byBtYW5hZ2UgYWNjb3JkaW5nbHku
CgpUbyBzdXBwb3J0IHRoaXMsIHJlcGxhY2UgZGV2bV9yZWd1bGF0b3JfYnVsa19nZXQoKSB3aXRo
CmRldm1fcmVndWxhdG9yX2J1bGtfZ2V0X2NvbnN0KCkgYW5kIGlubGluZSB0aGUgcW1wX3Vmc192
cmVnX2luaXQoKQpmdW5jdGlvbi4gYWRkaXRpb25hbGx5IHJlcGxhY2UgdGhlIGFycmF5IG9mIHJl
Z3VsYXRvciBuYW1lcyB3aXRoIGEKYnVsayByZWd1bGF0b3IgZGF0YSBzdHJ1Y3R1cmUsIGFuZCB1
dGlsaXplIHRoZSBpbml0X2xvYWRfdUEgZmllbGQKcHJvdmlkZWQgYnkgdGhlIHJlZ3VsYXRvciBm
cmFtZXdvcmsuIFRoaXMgZW5zdXJlcyB0aGF0CnJlZ3VsYXRvcl9zZXRfbG9hZCgpIGlzIGF1dG9t
YXRpY2FsbHkgaW52b2tlZCBiZWZvcmUgdGhlCmZpcnN0IGVuYWJsZSBvcGVyYXRpb24uCgpTaWdu
ZWQtb2ZmLWJ5OiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KLS0tCiBk
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgfCAyOSArKysrKysrLS0tLS0t
LS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZz
LmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMKaW5kZXggOWM2OWM3
N2QxMGM4Li5hYWE4OGNhMGVmMDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXFtcC11ZnMuYworKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
dWZzLmMKQEAgLTExMDcsNyArMTEwNyw3IEBAIHN0cnVjdCBxbXBfcGh5X2NmZyB7CiAJY29uc3Qg
c3RydWN0IHFtcF9waHlfY2ZnX3RibHMgdGJsc19oc19vdmVybGF5W05VTV9PVkVSTEFZXTsKCiAJ
LyogcmVndWxhdG9ycyB0byBiZSByZXF1ZXN0ZWQgKi8KLQljb25zdCBjaGFyICogY29uc3QgKnZy
ZWdfbGlzdDsKKwljb25zdCBzdHJ1Y3QgcmVndWxhdG9yX2J1bGtfZGF0YSAqdnJlZ19saXN0Owog
CWludCBudW1fdnJlZ3M7CgogCS8qIGFycmF5IG9mIHJlZ2lzdGVycyB3aXRoIGRpZmZlcmVudCBv
ZmZzZXRzICovCkBAIC0xMTY0LDkgKzExNjQsMTAgQEAgc3RhdGljIGlubGluZSB2b2lkIHFwaHlf
Y2xyYml0cyh2b2lkIF9faW9tZW0gKmJhc2UsIHUzMiBvZmZzZXQsIHUzMiB2YWwpCiAJcmVhZGwo
YmFzZSArIG9mZnNldCk7CiB9CgotLyogbGlzdCBvZiByZWd1bGF0b3JzICovCi1zdGF0aWMgY29u
c3QgY2hhciAqIGNvbnN0IHFtcF9waHlfdnJlZ19sW10gPSB7Ci0JInZkZGEtcGh5IiwgInZkZGEt
cGxsIiwKKy8qIERlZmF1bHQgcmVndWxhdG9yIGJ1bGsgZGF0YSAobm8gbG9hZCB1c2VkKSAqLwor
c3RhdGljIGNvbnN0IHN0cnVjdCByZWd1bGF0b3JfYnVsa19kYXRhIHFtcF9waHlfdnJlZ19sW10g
PSB7CisJeyAuc3VwcGx5ID0gInZkZGEtcGh5IiB9LAorCXsgLnN1cHBseSA9ICJ2ZGRhLXBsbCIg
fSwKIH07Cgogc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfdWZzX29mZnNldHMgcW1wX3Vmc19vZmZz
ZXRzID0gewpAQCAtMTg5MCwyMiArMTg5MSw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGh5X29w
cyBxY29tX3FtcF91ZnNfcGh5X29wcyA9IHsKIAkub3duZXIJCT0gVEhJU19NT0RVTEUsCiB9OwoK
LXN0YXRpYyBpbnQgcW1wX3Vmc192cmVnX2luaXQoc3RydWN0IHFtcF91ZnMgKnFtcCkKLXsKLQlj
b25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgKmNmZyA9IHFtcC0+Y2ZnOwotCXN0cnVjdCBkZXZpY2Ug
KmRldiA9IHFtcC0+ZGV2OwotCWludCBudW0gPSBjZmctPm51bV92cmVnczsKLQlpbnQgaTsKLQot
CXFtcC0+dnJlZ3MgPSBkZXZtX2tjYWxsb2MoZGV2LCBudW0sIHNpemVvZigqcW1wLT52cmVncyks
IEdGUF9LRVJORUwpOwotCWlmICghcW1wLT52cmVncykKLQkJcmV0dXJuIC1FTk9NRU07Ci0KLQlm
b3IgKGkgPSAwOyBpIDwgbnVtOyBpKyspCi0JCXFtcC0+dnJlZ3NbaV0uc3VwcGx5ID0gY2ZnLT52
cmVnX2xpc3RbaV07Ci0KLQlyZXR1cm4gZGV2bV9yZWd1bGF0b3JfYnVsa19nZXQoZGV2LCBudW0s
IHFtcC0+dnJlZ3MpOwotfQoKIHN0YXRpYyBpbnQgcW1wX3Vmc19jbGtfaW5pdChzdHJ1Y3QgcW1w
X3VmcyAqcW1wKQogewpAQCAtMjA2OCw3ICsyMDUzLDkgQEAgc3RhdGljIGludCBxbXBfdWZzX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJl
dDsKCi0JcmV0ID0gcW1wX3Vmc192cmVnX2luaXQocW1wKTsKKwlyZXQgPSBkZXZtX3JlZ3VsYXRv
cl9idWxrX2dldF9jb25zdChkZXYsIHFtcC0+Y2ZnLT5udW1fdnJlZ3MsCisJCQkJCSAgICBxbXAt
PmNmZy0+dnJlZ19saXN0LAorCQkJCQkgICAgJnFtcC0+dnJlZ3MpOwogCWlmIChyZXQpCiAJCXJl
dHVybiByZXQ7CgotLQoyLjQ4LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
