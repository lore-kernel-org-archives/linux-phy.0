Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4200C98306
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 06:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJpU64WKfBCO4HGV5a0N5cIbzD8TgHyZVePXwSzW18s=; b=pDL5NbDAPf4X2q
	zqtc/9vCmVbqyQsdwsm/Oxp0NBnMZPv72dgLD2n36wq1jEXwMv+x4d02J7Ym6wJi5fl0KiE4F0wA0
	s2Y7DGWTWu0NVO82Kyra2UbzUUkhYiZhtkdVVTzAGaFmudgWJhQ+BwxuDxbNO1IymmMwPX9PsaD1O
	2DYBzTa0kjKBxRgHL36BUPE7ANLx5j/tEhzBMIuK+vwDcEPpJPgaWaNFAjHLKL8/UTkmYDWlsRoiW
	kIBNTmQxtaXHt+4S+MDiW8/nKZCtJIedUKJIQlfwrpI/fj9ZjQQBxC37oRX6zuCvNevqC12JomO2Y
	ircUZ3MBqK9hk8hjAb2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9zAW-0000000Cjep-0qlr;
	Fri, 25 Sep 2026 06:12:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9zAU-0000000Cje5-19rY
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 06:12:23 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68P4YnNE208802
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 06:12:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fciIkNekBS3q2iFKXDGY0NwusmNL5IXf3wGh4hTvcDE=; b=HLlENdb2HreD8MxM
	xVFAgNT5zKLMqfiqNt4A1Lp3gs3aDZ+M+MECdG/pY13hoMR66CmowHZh+PFj8tRc
	Mpo89OABJifDZZRofSykmaYK9BGumZpHbqs+j4AzCtuFlMsFXaq0IrOYig+zmJlI
	ov/O8kWejnbGJ7+TkTcPgrDY+ghj1S5rBMjMJ/UsjQoDzo7Rx7YPOh9ffMQ06k3l
	KfUlzdXCMpbn4P4eJRZV+eWjq5wW1lWBmBWB1FNwztfu1C08LfcC5aWlpwEgJ+Oo
	KKmo33tTziC5uCnoIQaroVeCbAhvaGlHWuMKyXTZVJ9jrS7EGwkd/Ovyegll/Niv
	jEHvog==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gw898t9jk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 06:12:21 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-30f1b904861so891427eec.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 23:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790316741; x=1790921541; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fciIkNekBS3q2iFKXDGY0NwusmNL5IXf3wGh4hTvcDE=;
        b=IYU7q2RDIyRVjWtcSmMcgjxf+EGu+LUtpOnGjNEfMVr9tvnbqPAAU6ZC4yi2lWk6vM
         zqa8DBn+T5EsxSazT9EObFanwbsRHczw+kLLN9LeDWTQalYU7G2pTeqY6UigXqToZ8Vu
         WVf6+Vrpdw1D1dZzaJTVIzLBTBxzw0iMsBFKUXlQ/uYBdsDMmwPtuDwbQ86nyBWXdLVp
         KChzWNd7be5GHf4RyxHBfHgSEgtNaf3AiQZZTDCMlW3mcnDFqYAM0H8ALUNUinauUIm0
         PkhZSUl4wGTJ8J/v1JSQNHBBMOYQlFa5PmQecoHkgeUKUqWR4qJxQkaqHZfzie1NB7NS
         Iy5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790316741; x=1790921541;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fciIkNekBS3q2iFKXDGY0NwusmNL5IXf3wGh4hTvcDE=;
        b=uaiR0swtujCUuCHTS5y2Ne+G54rWkVcZJC2LX/y/gKYmgOO/fc+ai/q+Iyi8eWln/q
         qsBojTwsUl1V3Na7KOKtB+a2NEKvSt7TsWyUEMkLC60T0d5lP9aBUHh9XpScoMCuxEsr
         1/KtKBLAgYcild2KY6urlkvqviYNjZfND/szoAkelCLvmr/DcpaaO3EBJGYPxmImbi8+
         cqtnQMAdajrVTkKhLJkVH/monGwuMTMRMkwB2ROMYzs2FlfTc5MS+tSPKf161kL7eJsk
         rAiOy75lYzjMsI0Wh0UNkRqqqptC17rggZ1YMU4Vu+DnBmoWJPgGnihymPvD0S689ZOO
         6dig==
X-Forwarded-Encrypted: i=1; AKwUvBz0IXhrfOQSLkouqiSglA8JSAJxbNkhSrp6WFLINBAX9o/5Rznw30S3iR12ohVNXRvnjbINxOAtzB0=@lists.infradead.org
X-Gm-Message-State: AFuF++l7yWXvw7+DmUfnivY4BY31fxjxV8Ydv17Ptx/BCAZchEPTRjFW
	Qir0/IMTOYr1SRoIc+ymcJ6nHX6cpjpLcTl8IqpzKTxAr0R7lGJm5Rq62rkJJyArqvwEcvjBu6U
	rDTpWFAgR9u3fIl83YwuqgHvZeH9Wo4cdW1IyS61apX5oZdYcjgSnjwiYHT3Hhxtp3X1u
X-Gm-Gg: AYBFou22LlTtASdFSsYNlsraNvCGi6HJsvDY7/BS88Wea+EY8iUhkjorJXlCuevTKCL
	1yzFHy1KbHJqjFBypp4AUdsQL+tXKeVIOuXbiB+4Dn2iPym8RLNddg4WyM7IcRS+IprPBYAxDFJ
	G6GJ2Vzm/N7MEwSqQ16OGErLs5eTRbdgwdsQjW8M8FOXzKWNa8K6XPDiauieNLciWW3llqi3+ha
	lv8Ouy8s0UPS88whJCAmKcxRnep4GkVgDu8XkaCXV7LcMegcfiuCgiIXOlOPes4rjT/SI+SkyzA
	7kHwsM4C8DshYpv9jtSdl3oBjvVRUt22rUIjCarUyn374pxEwsoL6JcTNsXRJXccu1f8dzh5ZrL
	C2RFRLKF2ZLrnLtYqg8g3RPn8IvM=
X-Received: by 2002:a05:701b:20ce:20b0:143:50a0:56d6 with SMTP id a92af1059eb24-14504030beamr3566054c88.7.1790316740626;
        Thu, 24 Sep 2026 23:12:20 -0700 (PDT)
X-Received: by 2002:a05:701b:20ce:20b0:143:50a0:56d6 with SMTP id a92af1059eb24-14504030beamr3566013c88.7.1790316739758;
        Thu, 24 Sep 2026 23:12:19 -0700 (PDT)
Received: from [10.206.111.19] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-145adbcd1bcsm4787055c88.14.2026.09.24.23.12.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2026 23:12:19 -0700 (PDT)
Message-ID: <8f341b4f-fdbe-4206-a5a1-23aad375da57@oss.qualcomm.com>
Date: Fri, 25 Sep 2026 11:42:14 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] dt-bindings: media: qcom,glymur-camss: Add Glymur
 CAMSS
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        conor+dt@kernel.org, media-ci@linuxtv.org, robh@kernel.org
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
 <20260925-glymur_camss-v4-2-d7c2983d6d7b@oss.qualcomm.com>
 <20260925055837.EEBB61F000FF@smtp.kernel.org>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <20260925055837.EEBB61F000FF@smtp.kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI1MDAyNCBTYWx0ZWRfX7HyGm7JUDpTv
 mpXMOJxKE/jhGJFjl0QMEbbT0G3AyiRdvSeOuQ1zFWKzWKagsE+konJMIS/fEtsu1qV3wQBMsnn
 LGdm6oAmQvWztAUppI4MTIcBeZY+RCe6Oh1Cpu30ZDWfGb/OJMspxRj/cQPS68Ba157n/S9sCVm
 tJ+SYvfo1Oa4Ce92MMWVHSG1bUFTRM6QGd6shz1HHLF7B7y/QaxjkJx6Gt2dddtlxq6VSbCIkMh
 CvZHnrTKw09/FFCz7EOXpUa5PJ/NJtxd9Lxy9CpwwxfvbAQpReCJUjL3JDHAV4sxCkd0pijtqUs
 787JkNcpYvpVw75jWvlrmoxcVzUPPIpuvF8q1x2rySfEMEOwGteVK3O1nUzzY2Ec4yLqyjsRsGT
 7zMPpv+5r5JB8K0w3l/q2v5VZS4IGg/dPnY42MvE8zM7Y+LGmQY2fmsTS2tX/Z32JNeXFt8zg/E
 trnCA4HanyaAF0fe2+g==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI1MDAyNCBTYWx0ZWRfX4kVKr6HZcas9
 JaZ5x0sBYCN/pok1PgsJE2XfRlTa34pJ6b1cbLKoGwY4KpENjutKQFa6mns0A1jrGy9gkWSC9LV
 2/QvVzn6lataSTV2Ap3ZYpK1O2CO5Rw=
X-Proofpoint-GUID: pmG1TiNV6PEn75LwN7bd6XroT5vlhA-R
X-Proofpoint-ORIG-GUID: pmG1TiNV6PEn75LwN7bd6XroT5vlhA-R
X-Authority-Analysis: v=2.4 cv=EJWTQFZC c=1 sm=1 tr=0 ts=6ab610c5 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=JhJJWNIH0-zBFtMT4mAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-25_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 bulkscore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609250024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_231222_345237_5B5167D9 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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

CgpPbiAyNS0wOS0yMDI2IDExOjI4LCBzYXNoaWtvLWJvdEBrZXJuZWwub3JnIHdyb3RlOgo+PiAr
Cj4+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPiBbU2V2ZXJpdHk6IE1lZGl1bV0KPiBU
aGUgY29tbWl0IG1lc3NhZ2UgbWVudGlvbnMgdGhhdCBHbHltdXIgdXNlcyB0aGUgbmV3IFBIWSBB
UEkgdmlhIHN0YW5kYWxvbmUKPiBwaHlAIGNoaWxkIG5vZGVzLiBTaW5jZSBhZGRpdGlvbmFsUHJv
cGVydGllcyBpcyBzZXQgdG8gZmFsc2UgaGVyZSwgYW5kIHRoZXJlCj4gYXJlIG5vIGRlZmluaXRp
b25zIGZvciBwaHlAIGNoaWxkIG5vZGVzIG9yIHRoZWlyIGFzc29jaWF0ZWQgcHJvcGVydGllcyBs
aWtlCj4gI2FkZHJlc3MtY2VsbHMsICNzaXplLWNlbGxzLCBvciByYW5nZXMsIHdpbGwgdGhpcyBj
YXVzZSBkdC12YWxpZGF0ZSB0byByZWplY3QKPiBkZXZpY2UgdHJlZXMgdGhhdCBpbXBsZW1lbnQg
dGhlc2UgY2hpbGQgbm9kZXM/CgpUaGUgcGh5QCBub2RlcyBhcmUgc3RhbmRhbG9uZSBub2Rlc+KA
lCBub3QgY2hpbGRyZW4gb2YgdGhlIENBTVNTIG5vZGUuCkNBTVNTIGNvbm5lY3RzIHRvIHRoZW0g
dmlhIHRoZSBncmFwaCBmcmFtZXdvcmsgKHBvcnRzL2VuZHBvaW50cy9yZW1vdGUtZW5kcG9pbnQp
LgoKVGhlIHBvcnRzIHByb3BlcnR5IGlzIGRlZmluZWQgdmlhICRyZWY6L3NjaGVtYXMvZ3JhcGgu
eWFtbCMvcHJvcGVydGllcy9wb3J0cywKc28gYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlIGlz
IGNvcnJlY3QgYW5kIHdvbid0IGNhdXNlIGR0LXZhbGlkYXRlIGZhaWx1cmVzLgoKCi0tClJlZ2Fy
ZHMsCk5paGFsIEt1bWFyIEd1cHRhCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
