Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF863CD13CF
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 11:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQKSb8P3fzv2INCYWdy5kt4GRZoDXMHyd3ixzQ/zSEc=; b=FXgE3ICeDE5BAq
	rqLem4q+2L+y5NPTlt/MTr0Kaw+6q2SpQ4ph9/Asr4i4c9T12R/4z99O+vuHz82RnpFlRpUeexvjm
	YQvcch1Y0CBfoV9J9Owthy0j5tsmBceaYq1L0mTHI2IRrtf++82UGC8Ff2WS5Fz30/c2iCRXFmVWZ
	Buv3nn+gW3/QZhRsBKhbCtgdAZ/bOX0QVHtAfNhVbSD5Jp1dwip8/4TfjtzSJ0uJoSeozZKqyQti/
	1NcuhfCumuUr2wzha0+1K/H3yOdZXTKas7J2UEPZ6eA48MmsQlwHW4hKCE+n0Pq+/iB8rryDbIG5L
	zFeyow89IfJrDsHZ0NaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQXU-00000005Mhx-2TxV;
	Mon, 10 Nov 2025 11:58:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQXR-00000005Mgk-3WDt
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 11:58:27 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA9Ej9w2992485;
	Mon, 10 Nov 2025 11:58:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0mk/MaewWjA6weau99q1k/xcKovNI8yIK6j/KpNcwmU=; b=LBPQ/WY2W+4esBIJ
	IRx9KYiMK2aYmeGsZSxPCtsKYgDY/VauRuoZpO8Byebruxkb1p+C6PNedI1ordXg
	SxJSNk4zhJ83c9yPvwockFIyPp9P7KU99mTRVKQ7qQIV5n0h2PAxFvxxVeBw6tIT
	KemL2IafK2R3/lZBUDz4pvpWm+6/gYd1Dx4vsPXx7q311q5yFC2n351VRfqM9+HT
	CYHTQ8eNIb9sTPUOFn8vIXtpZPJVyVMf0/aRLWxQDXRWsl32ICVx19Gifd2wTyqH
	Wsk/rkPK07CVlpHFXPib5XMd3JhMLdD5iMF90i7HtChSRHSptTWZlgVv3qnGSZWr
	Eakkkw==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abd88rfa3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Nov 2025 11:58:22 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5AABwDx8023599;
	Mon, 10 Nov 2025 11:58:19 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 4a9xxkqehw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Nov 2025 11:58:19 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5AABwGxA023611;
	Mon, 10 Nov 2025 11:58:19 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-amitsi-hyd.qualcomm.com [10.213.97.115])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 5AABwJQ9023625
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Nov 2025 11:58:19 +0000
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 4648853)
	id B65135A8; Mon, 10 Nov 2025 17:28:18 +0530 (+0530)
From: Amit Singh <quic_amitsi@quicinc.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, lumag@kernel.org, neil.armstrong@linaro.org,
        quic_wcheng@quicinc.com
Cc: Amit Singh <quic_amitsi@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com
Subject: [PATCH 2/3] phy: qcom: qmp-combo: add vdda-aux regulator
Date: Mon, 10 Nov 2025 17:28:05 +0530
Message-Id: <20251110115806.2379442-3-quic_amitsi@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251110115806.2379442-1-quic_amitsi@quicinc.com>
References: <20251110115806.2379442-1-quic_amitsi@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: F3unT7jHhJilxXOrSNtfv_alKrKDUZ6d
X-Authority-Analysis: v=2.4 cv=PL4COPqC c=1 sm=1 tr=0 ts=6911d35e cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=vwgnlJYU5BRgRSzaXB0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=TjNXssC_j7lpFel5tvFf:22 a=cPQSjfK2_nFv0Q5t_7PE:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDEwNCBTYWx0ZWRfX3PwdBNDNY9gu
 p3TEWkynZFHc3j5rGCjsemM5E/G5JaHV33EXGSWfo6wIfplffxy2YhnHTKmiBNsOItF1kiDo5ms
 2jfT+syj3O2Hh7C8M9qE2y4eI8kXbzXY6xyfL4NAtJVOSF62xc+hotrm+3y+ksC63kuYAwn+IgU
 /CwRj90CxTHiEOhzjyslF9mtXVqATnakZ4KKW3S+otfYoJeeR4zVYcf/HeCzARWDJHbigoOdHd7
 S7MlXHIV3Fj0HyDekTRoo/5K0XAIvBOkxBxcNVs3IQLmjq2SG860NJhTksB8EP8EjQrd/M4jReK
 Q0Mylxl2ClJQzY9DDDdBhFM3/4iGLplwnPJgyMc7C4fKpMOE5qSONBinKxNOiqXmgS5uBLfFBI5
 nuzGGgZDxx/jpq8DbZ/ysBSmxA/k3w==
X-Proofpoint-ORIG-GUID: F3unT7jHhJilxXOrSNtfv_alKrKDUZ6d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 adultscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_035825_898976_94CA0EFD 
X-CRM114-Status: GOOD (  12.53  )
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

QWRkICJ2ZGRhLWF1eCIgdG8gdGhlIFFNUCBQSFkgcmVndWxhdG9yIGxpc3Qgd2l0aCBhbiBlbmFi
bGVfbG9hZCBvZgozNjAwMCDCtUEsIGFsbG93aW5nIHRoZSBkcml2ZXIgdG8gbWFuYWdlIHRoZSBh
dXhpbGlhcnkgc3VwcGx5IHdoZW4KcHJlc2VudCBpbiBkZXZpY2UgdHJlZXMuCgpUaGlzIGFsaWdu
cyBwb3dlciBzZXF1ZW5jaW5nIHdpdGggZXhpc3RpbmcgInZkZGEtcGh5IiBhbmQKInZkZGEtcGxs
IiByYWlscywgYW5kIGlzIHJlcXVpcmVkIGZvciBwbGF0Zm9ybXMgdGhhdCBkZXBlbmQgb24KdGhl
IGF1eGlsaWFyeSAzLjAgViByYWlsIGZvciBzdGFibGUgUU1QIG9wZXJhdGlvbi4gUGxhdGZvcm1z
IHRoYXQKZG8gbm90IGRlZmluZSAidmRkYS1hdXgiIHJlbWFpbiB1bmFmZmVjdGVkLgoKU2lnbmVk
LW9mZi1ieTogQW1pdCBTaW5naCA8cXVpY19hbWl0c2lAcXVpY2luYy5jb20+Ci0tLQogZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1jb21iby5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJv
LmMKaW5kZXggN2I1YWYzMGYxZDAyLi4xYWQwZjA2YWUyNjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jCisrKyBiL2RyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXFtcC1jb21iby5jCkBAIC0xNjQ5LDYgKzE2NDksNyBAQCBzdHJ1Y3QgcW1w
X3JlZ3VsYXRvcl9kYXRhIHsKIH07CiAKIHN0YXRpYyBzdHJ1Y3QgcW1wX3JlZ3VsYXRvcl9kYXRh
IHFtcF9waHlfdnJlZ19sW10gPSB7CisJeyAubmFtZSA9ICJ2ZGRhLWF1eCIsIC5lbmFibGVfbG9h
ZCA9IDM2MDAwIH0sCiAJeyAubmFtZSA9ICJ2ZGRhLXBoeSIsIC5lbmFibGVfbG9hZCA9IDIxODAw
IH0sCiAJeyAubmFtZSA9ICJ2ZGRhLXBsbCIsIC5lbmFibGVfbG9hZCA9IDM2MDAwIH0sCiB9Owot
LSAKMi4zNC4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
