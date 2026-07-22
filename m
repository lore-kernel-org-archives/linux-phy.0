Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A649C44539
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 13:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5rDI61KCbWCk2348b8rvpagO7pQAvcJdhJVmBBy5n88=; b=iTzjBYl9LEd6Ok
	CUqPZgZ/29X1YabnOhReD0HctjQxNzFoqJlrDEMVJukHvvF6i7zNNXVs/uW1lMseifSOiVeexE70J
	/W6dQFoVs0bgBiV5f5ThJvPYCcdS598LM/dx3fs7xCzCtIrrPkkAE6A7BvGllMa2kmj7JioXorEB5
	d/7OR+OGg+HN7fpK7k7PN5DDXAVjjRrAZVVa6qf+boZuB60rY5hMTPwnSij7G8pVXW9rYmWx+Qh9q
	Wlr4anfZnWCZB00uO7o9Qou1q03YuIWkSasWmMPy6Pc9ZPRMIaB1fozhXwzyyhraoD2fJuKtaNN2a
	xJKc6kQGrM0O6VvUSJ5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGF-0000000BwCF-0c1o;
	Wed, 22 Jul 2026 13:45:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmXGC-0000000BwBR-1abE
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 13:45:21 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66MDWO1R2029972
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=vJcKEmjH+SaATY1H200JHP
	BYsDX1MZgPjB74rtKM1G4=; b=JA88l3BXe+04QCEXlsWCIWMLjDw/6iwqUGG0MJ
	Ms/GJ3+bsuEtBQuX544j4fre8YTc7DKbBNAFaAAtYBnqPmgg04cFXnAYuA5wpFN2
	pVp97PhwGzoe1Kj64I5Ql2mTTaBVNKoG7nWPzdC1OOgIvDnUo0b7EnyS8SIFXFvA
	YLjJfIuYbuQBU0eZOoaCobVxdauq1ukwLu0a91QBId2Dbf5K85/yJhGfRw9nvBuD
	ErhdzVKKVJTYRmtjaNyqPo5j9Uok4d/vhrEmscnLdFF1irVIpywjoMCKWdeLvAcS
	UY3v/6esC7LjnJXkXXS8W8frpuJ0ktOJh0L8FBnvijwFFJ+Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjr839uaf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 13:45:19 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c26012cd0so219396291cf.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 06:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784727918; x=1785332718; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=vJcKEmjH+SaATY1H200JHPBYsDX1MZgPjB74rtKM1G4=;
        b=DAbmLPe0qmiPb2M6Kce4CtIXIivpgIZ4L3E4jDhBECIKoZ/8Pph2dLQoZgf8IUFSIN
         EX+PY5MqBSlNv2e2eRERtm57OQukYgZQyKs6X2aD6l5t78YZu6CBBzSudTXSvQXl0GUs
         TNPqMQzKHxiOzO+spn4o/wVmbqUO+YheCyXAxXLeOVgr59Hvl1DYP8YFELlrF9uNNLkV
         x+pDUw0A3dqsYSrPjAFzl2cLhhenbWhLtrDi5h4cnY+ZlLvllZC8avk18nalmd2XW7Qt
         ptbzcq0Jj/qTMjgfWYxCXP26LYzvgv+thlpYUkm/LUC7BunKMw1Kj2IYjyOE/XWhKOnw
         MeLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784727918; x=1785332718;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=vJcKEmjH+SaATY1H200JHPBYsDX1MZgPjB74rtKM1G4=;
        b=JP8dlYLoDRQ8qBrIICedS/kXTLFm8Ri631C7IihKELvEqsYsYSRGVOQYly1ty8DxPA
         MfwBH07qx1vtOzqMWR/mdZE2ob1OLxOySC84lA7334Xyj4A0E8iXN0Adeypzkr/I4wUD
         kSw0Dbc6Po5sE4mGdVBBp0aqdQOOKvwjRVkkTcqxka1i6jkuQZPrgeNLvJBVbs6Cqd5G
         s90W43B6t95UKexDEEf17uL6W9XW1zm3CIDQpedGAyaei2eIZUM40kSFj2CBBNNstEl5
         VwLUbc7mHLwKrTFvX+OBXi7PBriAsyoXtp2nPd4+1Bw9xGtabufO2QZfnMAUDltZT68a
         OHSw==
X-Forwarded-Encrypted: i=1; AHgh+Rqmj8AxACn8f8rL2kw3RrIC6tB1+sNg1NCGxno5uzRkJ0GsHixFZDWQgbOhwydABzpfqDzDm+HYZXs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCjaP0qxdfICYY8FY9C1sfW7xufv+puB1tQJtSjuFTACBfGbJg
	rw8GZee53Cu6rwWXVgKkwidRudWczLVfhIc1S4A2GMvypfzLDBtiS1iTEO+nJeE+VWeNie4bzjQ
	0iUkmTIyru4Zdq2uLY1+sOD0N59U06/7nbP1U1m9tnicHbojwhDyEPK106hUVxOI8O0xS
X-Gm-Gg: AR+sD12tUozlXV0Owg3kI3e6rNomu+jqGiK2MtqBL6iuaLx5gO2CoAq9Qob12bBw5Af
	udmo1qejeuOR4WKf2H28E2eqocxVJ7iN3KdhGsGTnF2FuzAOAecpJoff3PPVlG8Xh2pbVUnH+gR
	PW7y42KQVVXiqYo1rXXlOZN0Et6OhkGohWjaPpC0R2PAynV1/k3pKgnuNUcnYqh+cyyhlfbZko4
	W+LadZkF5fPkBNI/LdaDuCExI819i2sy03Bbq+/xrwkxeStQpimRIeezdegKBXnnD7MDJxzMKav
	smTo+oTT+czgg1EU05lzyBHkOtC7QWsg9NZ6UmFHXsKBHp71i431MvuT0BlnUprkJcdX5DHvKAs
	G1d91df1inMIAE9W5LJx7wbiOt1rLtWLhhZlJQK4abRf3x4RqcwTPQOQe/doFqRnOS0YmWYPOka
	X0eWxVvZC4xk/C4Syvaycxhc1NgPMsFrVm8B0Pmb9c5C9xqrXYSQ==
X-Received: by 2002:ac8:5705:0:b0:51c:7b12:5fff with SMTP id d75a77b69052e-5213e7795aemr207544451cf.75.1784727918219;
        Wed, 22 Jul 2026 06:45:18 -0700 (PDT)
X-Received: by 2002:ac8:5705:0:b0:51c:7b12:5fff with SMTP id d75a77b69052e-5213e7795aemr207543581cf.75.1784727917554;
        Wed, 22 Jul 2026 06:45:17 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com ([2a01:e0a:830:450:48e:a2cc:6c4:c92a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ac8c3esm111874366b.23.2026.07.22.06.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 06:45:16 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v6 0/7] phy: qcom: Fix possible NULL-deref and runtime PM
 race conditions
Date: Wed, 22 Jul 2026 15:45:13 +0200
Message-Id: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGnJYGoC/4XOwQrCMAwG4FeRns1Ia7upJ99DPNS1dYW6bq0bi
 uzdzbwoqHgJ/IR8+e8s2+RtZtvFnSU7+uxjS6FcLljd6PZkwRvKTKAosRIIfR3PMOQjdM0NnL9
 CO4QAzuGmcqo03EpGt12ytHu6+wNll+jq0iSrX5pAxWlKLCq5XlUcOITo66KLQ9C+3cWci37Qg
 R6eCxqz2/h8ien2rDvKWf/XbJSAII3Q6LA0aqU/3bngqN4x/gtThGm+5lZoczTCfMGmaXoAx0F
 QV1YBAAA=
X-Change-ID: 20260720-qcom-usb-phy-fix-null-ff097f56d1e4
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: iAtmSoNGm3YUeuauUH3BI0nkSYckfDD8
X-Authority-Analysis: v=2.4 cv=VfrH+lp9 c=1 sm=1 tr=0 ts=6a60c96f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=JfrnYn6hAAAA:8
 a=JEbQ7g8ZO4jZ3kYS0isA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: iAtmSoNGm3YUeuauUH3BI0nkSYckfDD8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfX2Hg5nMpwPv5g
 f1XlTobUn6BK3BJ/h6jZkX8xXWqLbT0oJW3COwUkIiD2C1yHTEEg3KYuUsnuxqRiKS5Msfj7EtD
 /u8g81R/cYo5OWtr/xf50NIFQpK0/RHLXEHR4nCfKIp+vGi1JB2fgfaN1OV2rwQi5S8LbGtAShU
 Qc6IOTVCAE3sOWk2B7n0uLYNbUSA6/quxL04JvHW1TIabZpfG//xPdiDQzcwt6cIAfB5AWDtde/
 MN0kyD8B/x1F2s/NesQfx1q8PXmAgAmlODPY92bW0Sz2m+CuMbBEVU0T8VQGinuKXVqA/WS+WNX
 al/xQYFjqGOD7fLK80TBaQnK7fs3aETVv2CQ//xBfSUOtJ1mzQVc5KRbKKSsrSiLCs4qQyXESwA
 qyKLcS7HLAbFy3E1SPqQ2eIa6hxRu8Qjsmm9F6ho+mExRp7Jh+RQvkyFqznAXyLiNkLwA5OiAgB
 06rkjteeGTfXY4Y4UsA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDEzNCBTYWx0ZWRfX/b/yPK9+1iMx
 xlue8EXQCYUXVHAkq5SDStXY3wNy2XR6MOlo+VjDbDzW/XZpdNn0KvIw3EyDVsSl6UddwB3WLi9
 MinINPJe6akgtjdxkAe8Awvelylzg74=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_04,2026-07-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_064520_424559_8BD7FCA6 
X-CRM114-Status: GOOD (  18.00  )
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

QWRkcmVzcyBwb3RlbnRpYWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlcyBhbmQgcmFjZSBjb25k
aXRpb25zIHJlbGF0ZWQKdG8gcnVudGltZSBQTSBpbiBzZXZlcmFsIFF1YWxjb21tIFBIWSBkcml2
ZXJzLiBJbiBhbGwgY2FzZXMsIGVuYWJsaW5nCnJ1bnRpbWUgUE0gYmVmb3JlIHRoZSBQSFkgaW5z
dGFuY2UgaXMgZnVsbHkgaW5pdGlhbGl6ZWQgY2FuIGxlYWQgdG8KY3Jhc2hlcyBkdXJpbmcgZWFy
bHkgcnVudGltZSBzdXNwZW5kIGNhbGxiYWNrcy4KCi0gQXR0YWNoIGRyaXZlciBkYXRhIGJlZm9y
ZSBlbmFibGluZyBydW50aW1lIFBNLgotIEludHJvZHVjZSBpbml0aWFsaXphdGlvbiBmbGFncyB3
aGVyZSBuZWVkZWQgdG8gYXZvaWQgZGVyZWZlcmVuY2luZwp1bmluaXRpYWxpemVkIHBvaW50ZXJz
LgotIFJlb3JkZXIgcG1fcnVudGltZV9lbmFibGUoKSBhbmQgcG1fcnVudGltZV9mb3JiaWQoKSBj
YWxscyB0byBwcmV2ZW50CnVubmVjZXNzYXJ5IHN1c3BlbmQvcmVzdW1lIGN5Y2xlcyBkdXJpbmcg
ZHJpdmVyIHByb2JlLgotIFVzZSBkZXZyZXMtbWFuYWdlZCBQTSBydW50aW1lIGhlbHBlcnMgZm9y
IHByb3BlciBjbGVhbnVwLgoKV2h5IGl0IGhhcHBlbnM/CgpUaGUgUEhZIGlzIGEgc3VwcGxpZXIg
b2YgdGhlIFVTQiBkZXZpY2UuIEEgVVNCIGRldmljZSBjYW5ub3QgYmUgcHJvYmVkCnVudGlsIGFs
bCBpdHMgc3VwcGxpZXJzIGFyZSByZWFkeS4gQXMgbG9uZyBhcyB0aGUgUEhZIGlzIG5vdCByZWFk
eSwgdGhlCmRldmljZSBjb3JlIGtlZXBzIHJldHJ5aW5nIHRoZSBwcm9iZSwgd2hpY2ggZmFpbHMg
d2l0aCAtRVBST0JFX0RFRkVSLgoKQXQgc29tZSBwb2ludCB0aGUgUEhZIHByb2JlIGZpbmFsbHkg
cnVucywgYnV0IHRoZSBkZXZpY2UgY29yZSBtYXkgc3RpbGwgYmUKYXR0ZW1wdGluZyB0byBwcm9i
ZSB0aGUgVVNCIGRldmljZSBjb25jdXJyZW50bHkuCiAKSW5zaWRlIF9fZHJpdmVyX3Byb2JlX2Rl
dmljZSgpLCB3ZSBoYXZlOgoKICAgIHJldCA9IHJlYWxseV9wcm9iZShkZXYsIGRydik7CiAgICBw
bV9yZXF1ZXN0X2lkbGUoZGV2KTsKCiAgICBpZiAoZGV2LT5wYXJlbnQpCiAgICAgICAgcG1fcnVu
dGltZV9wdXQoZGV2LT5wYXJlbnQpOwoKICAgIHBtX3J1bnRpbWVfcHV0X3N1cHBsaWVycyhkZXYp
OwogICAgcmV0dXJuIHJldDsKClRoaXMgbWVhbnMgdGhhdCB3aGVuZXZlciBhIFVTQiBwcm9iZSBh
dHRlbXB0IGNvbXBsZXRlcywgd2hldGhlciB3aXRoIGFuCmVycm9yIG9yIG5vdCwgaXRzIHN1cHBs
aWVycyBhcmUgcmVsZWFzZWQgdmlhIHBtX3J1bnRpbWVfcHV0X3N1cHBsaWVycygpLgpSZWxlYXNp
bmcgc3VwcGxpZXJzIG1heSBpbiB0dXJuIHRyaWdnZXIgYSBydW50aW1lIHN1c3BlbmQuCiAKSW4g
b3VyIGNhc2UsIHNpbmNlIHRoZSBQSFkgaXMgYSBzdXBwbGllciBvZiB0aGUgVVNCIGRldmljZSwg
dGhlIFVTQiBjb3JlCmtlZXBzICdsb29waW5nJyBpbiBfX2RyaXZlcl9wcm9iZV9kZXZpY2UoKSBy
ZXR1cm5pbmcgLUVQUk9CRV9ERUZFUiB1bnRpbAp0aGUgUEhZIGJlY29tZXMgcmVhZHkuIEFzIGEg
cmVzdWx0LCBwbV9ydW50aW1lX3B1dF9zdXBwbGllcnMoKSBtYXkgcnVuCmNvbmN1cnJlbnRseSB3
aXRoIHRoZSBQSFkncyBwcm9iZSBmdW5jdGlvbi4gSWYgdGhpcyBoYXBwZW5zIGFmdGVyCnJ1bnRp
bWUgUE0gaGFzIGJlZW4gZW5hYmxlZCBmb3IgdGhlIFBIWSwgYnV0IGJlZm9yZSB0aGUgZHJpdmVy
IGhhcwpmb3JiaWRkZW4gc3VzcGVuZCBvciB0YWtlbiBhIFBNIHJlZmVyZW5jZSwgdGhlIFBIWSBt
YXkgZW5kIHVwIGJlaW5nCnJ1bnRpbWUtc3VzcGVuZGVkICd1bmV4cGVjdGVkbHknCgotLS0KQ2hh
bmdlcyBpbiB2NjoKIC0gTW92ZSBwbV9ydW50aW1lX3B1dCgpIGFmdGVyIGRldm1fb2ZfcGh5X3By
b3ZpZGVyX3JlZ2lzdGVyKCkgYW5kIHVzZQogICBwbV9ydW50aW1lX3B1dF9ub2lkbGUoKSBvbiB0
aGUgcmVnaXN0cmF0aW9uIGVycm9yIHBhdGgsIHRvIGF2b2lkIGFuCiAgIGFzeW5jIGlkbGUvc3Vz
cGVuZCByYWNpbmcgd2l0aCBkZXZtJ3MgcG1fcnVudGltZV9kaXNhYmxlKCkgb24gZmFpbHVyZQog
ICAoRG1pdHJ5L3Nhc2hpa28pLiBBcHBsaWVzIHRvIGFsbCBwaHlzLgotIEFkZCBzaW1pbGFyIHBh
dGNoZXMgZm9yIHFtcC11c2IgKHNhc2hpa28pCi0gTGluayB0byB2NTogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvci8yMDI2MDcyMS1xY29tLXVzYi1waHktZml4LW51bGwtdjUtMC1hMTgxZTJhZGJk
MmRAb3NzLnF1YWxjb21tLmNvbQoKQ2hhbmdlcyBpbiB2NToKLSBSZS1pbnRyb2R1Y2UgcGh5OiBx
Y29tOiBxbXAtdXNiLWxlZ2FjeTogRml4IHBvc3NpYmxlIE5VTEwtZGVyZWYgKHNhc2hpa28pCi0g
TGluayB0byB2NDogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI2MDcyMC1xY29tLXVzYi1w
aHktZml4LW51bGwtdjQtMC00ZDJhMGYwNmQ1M2FAb3NzLnF1YWxjb21tLmNvbQoKQ2hhbmdlcyBp
biBWNDoKLSBJbnN0ZWFkIG9mIG1vdmluZyBwbS9mb3JiaWQsIGluY3JlbWVudCB0aGUgcG0gdXNh
Z2UgY291bnRlciBiZWZvcmUKICBlbmFibGluZyBydW50aW1lIHBtIGFuZCBkZWNyZW1lbnQgaXQg
YWZ0ZXIgdGhlIFBIWSBoYXMgYmVlbiBjcmVhdGVkLiAoSm9oYW4pCi0gRHJvcCBub3cgdW5uZWNl
c3NhcnkgZGV2X3NldF9kcnZkYXRhKCkgbW92ZSBpbiBzbnBzLWZlbXRvLXYyCi0gRHJvcCA0LzUg
KHFtcC11c2ItbGVnYWN5OiBQcmV2ZW50IHVubmVjZXNzYXJ5IFBNIHJ1bnRpbWUgc3VzcGVuZCBh
dCBib290KQogIHdoaWNoIGlzIG5vdCByZXF1aXJlZCBhbnltb3JlLiAKLSBSZWJhc2UKLSBMaW5r
IHRvIHYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAyMDUxNjAyNDAuNzQ4Mzcx
LTEtbG9pYy5wb3VsYWluQG9zcy5xdWFsY29tbS5jb20vCgpDaGFuZ2VzIGluIHYzOgpSZWJhc2Ug
b24gbmV4dCBhbmQgcmVtb3ZlIDIvNiAob2Jzb2xldGUpCgpDaGFuZ2VzIGluIHYyOgpTcGxpdCBw
YXRjaGVzIDIvNCBhbmQgMy80IHNvIHRoYXQgdGhlIG51bGzigJFwb2ludGVyIGRlcmVmZXJlbmNl
IGZpeCBhbmQKdGhlIHJ1bnRpbWXigJFQTSBlbmFibGUvZm9yYmlkIHJlb3JkZXJpbmcgYXJlIGxv
Z2ljYWxseSBzZXBhcmF0ZWQuCgpMb2ljIFBvdWxhaW4gKDQpOgogIHBoeTogcWNvbTogcW1wLWNv
bWJvOiBQcmV2ZW50IHVubmVjZXNzYXJ5IFBNIHJ1bnRpbWUgc3VzcGVuZCBhdCBib290CiAgcGh5
OiBxY29tOiBxbXAtdXNiYzogUHJldmVudCB1bm5lY2Vzc2FyeSBQTSBydW50aW1lIHN1c3BlbmQg
YXQgYm9vdAogIHBoeTogcWNvbTogcW1wLXVzYi1sZWdhY3k6IEZpeCBwb3NzaWJsZSBOVUxMLWRl
cmVmIG9uIGVhcmx5IHJ1bnRpbWUKICAgIHN1c3BlbmQKICBwaHk6IHFjb206IHNucHMtZmVtdG8t
djI6IEZpeCBwb3NzaWJsZSBOVUxMLWRlcmVmIG9uIGVhcmx5IHJ1bnRpbWUKICAgIHN1c3BlbmQK
CiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYyAgICAgfCAxMCArKysr
LS0tLS0KIC4uLi9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYi1sZWdhY3kuYyAgICB8IDIx
ICsrKysrKysrKysrKy0tLS0tLS0KIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11
c2JjLmMgICAgICB8IDEwICsrKystLS0tLQogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
c25wcy1mZW10by12Mi5jIHwgMTUgKysrKysrLS0tLS0tLQogNCBmaWxlcyBjaGFuZ2VkLCAzMiBp
bnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKCi0tCjIuMzQuMQoKVG86IFZpbm9kIEtvdWwg
PHZrb3VsQGtlcm5lbC5vcmc+ClRvOiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGlu
YXJvLm9yZz4KVG86IERtaXRyeSBCYXJ5c2hrb3YgPGx1bWFnQGtlcm5lbC5vcmc+ClRvOiBXZXNs
ZXkgQ2hlbmcgPHF1aWNfd2NoZW5nQHF1aWNpbmMuY29tPgpDYzogbGludXgtYXJtLW1zbUB2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnCgotLS0KTG9pYyBQb3VsYWluICg3KToKICAgICAgcGh5OiBx
Y29tOiBxbXAtY29tYm86IFByZXZlbnQgdW5uZWNlc3NhcnkgUE0gcnVudGltZSBzdXNwZW5kIGF0
IGJvb3QKICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzogUHJldmVudCB1bm5lY2Vzc2FyeSBQTSBy
dW50aW1lIHN1c3BlbmQgYXQgYm9vdAogICAgICBwaHk6IHFjb206IHFtcC11c2ItbGVnYWN5OiBG
aXggcG9zc2libGUgTlVMTC1kZXJlZiBvbiBlYXJseSBydW50aW1lIHN1c3BlbmQKICAgICAgcGh5
OiBxY29tOiBxbXAtdXNiLWxlZ2FjeTogUHJldmVudCB1bm5lY2Vzc2FyeSBQTSBydW50aW1lIHN1
c3BlbmQgYXQgYm9vdAogICAgICBwaHk6IHFjb206IHNucHMtZmVtdG8tdjI6IEZpeCBwb3NzaWJs
ZSBOVUxMLWRlcmVmIG9uIGVhcmx5IHJ1bnRpbWUgc3VzcGVuZAogICAgICBwaHk6IHFjb206IHFt
cC11c2I6IEZpeCBwb3NzaWJsZSBOVUxMLWRlcmVmIG9uIGVhcmx5IHJ1bnRpbWUgc3VzcGVuZAog
ICAgICBwaHk6IHFjb206IHFtcC11c2I6IFByZXZlbnQgdW5uZWNlc3NhcnkgUE0gcnVudGltZSBz
dXNwZW5kIGF0IGJvb3QKCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8u
YyAgICAgIHwgMjYgKysrKysrKysrKysrKystLS0tLQogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXVzYi1sZWdhY3kuYyB8IDM2ICsrKysrKysrKysrKysrKysrKysrKy0tLS0tCiBk
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiLmMgICAgICAgIHwgMzYgKysrKysr
KysrKysrKysrKysrKysrLS0tLS0KIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11
c2JjLmMgICAgICAgfCAyNiArKysrKysrKysrKysrKy0tLS0tCiBkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1zbnBzLWZlbXRvLXYyLmMgIHwgMjYgKysrKysrKysrKysrKystLS0tLQogNSBm
aWxlcyBjaGFuZ2VkLCAxMTggaW5zZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pCi0tLQpiYXNl
LWNvbW1pdDogZDEwZGYwYjIzY2FmNDM5OWFlYjQ3YjU3YjMwMjlhMDRiMjg1M2QyNQpjaGFuZ2Ut
aWQ6IDIwMjYwNzIwLXFjb20tdXNiLXBoeS1maXgtbnVsbC1mZjA5N2Y1NmQxZTQKCkJlc3QgcmVn
YXJkcywKLS0gCkxvaWMgUG91bGFpbiA8bG9pYy5wb3VsYWluQG9zcy5xdWFsY29tbS5jb20+CgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
