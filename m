Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 797D4F588C2
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 12:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OdXDHVUpe2XnueV3HWryEXHvxZ1K4Z586vmYUupt4E8=; b=nllB+MVqavb+uZ
	Xxi5T97tP8PsaiKxbSQZXcSnw5ywqWqBPnXKAtP9NiYgQ8xyfYKGXOra4fsSkjRnV44P8dTJ+nGWd
	9PA269lEf3uCriuV8QFHpJcojmxd89qp2c0gL6lTTFiS4I2HFqpO16HzeMNhRlpQO1MCIo+BtzCz6
	jbks3iiboTsxeeYeSKZ8ocPRhvy7qtyBM1s8MI+18iIDKP3sYpVguuu1j1+Rm8okz7TNEGwinQagu
	2I/Te6StPNe33reg/smDlga6ncns8FQxFjq5l59PnM1bdz/p1iQhm3FDqyiBekgYHIiAtO1K9+AzY
	8l0TWAr7DqB/3NvHrxfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEo4N-00000006uYt-0mvC;
	Mon, 20 Apr 2026 12:49:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEo4K-00000006uYW-1zOb
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 12:49:41 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63K977rc2755626
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 12:49:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sRtwY56nBQbf1x0k86FqJm1BNTc/81FVIoSrk2ABFhU=; b=CDqWVq6e9QRVF6zp
	I4xFHZNE4Mf8ew6c0GXJAZBqfn8efH/FwUwPjuVOGAiLKx950bvsqH0w7qUqzZxy
	vGpULUXVnw8UUBRMSmf8hG+vLjPEm5guU22WI76AmkUcVunMX3UlCTMkNf8ydumv
	vMPf/ecCD4vh2EdqXAUfzPmc5MQGBnGi4F5UyBE/ioGU6dGwzFiXbfpE/eFHNE7G
	2GnuVR5kxu7kYruQzeAaUp0V9wB7b6YdZNmqkj1TyvLcptiqD0HB5QqHW5jT14sO
	xskU90iRIsYrU37rH3IPpJ4L6eZbTEX6/KaeQVY+kkPJSDI+yWieglydyUVSpI9A
	hjvLcw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnh7xgqhq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 12:49:39 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50e429ba4dfso4260071cf.3
        for <linux-phy@lists.infradead.org>; Mon, 20 Apr 2026 05:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776689378; x=1777294178; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sRtwY56nBQbf1x0k86FqJm1BNTc/81FVIoSrk2ABFhU=;
        b=IDr9lX8vmjpENLBENnq9j3sG7nFAsqxxHiDglLCKGCXt8t0zAWREBLfWMEEH67dvdB
         oqrO0vjAPIzbFBV1292EWHJmaB5UTpbEXAY8ACy/HmPL0z2P9i4YIRTypmF8p/3bJznM
         CQghw4mReAYnXz0K8xpI7UmYKD0XGc3IRR5Vzv1zDOUxYmipwcYU+n1YCoZjzyQ5TyWw
         8rTed0tcimFnw9bpaBi5vvjNN+LOEEaDVr6PxfL/UMYVvhfLevJkTEiYV6BWNGLoJNfL
         a9Cv/6/1emWCTUg8CTZ3qNR1BA4yHOx9uBRDbzp4digsAqt9KopCPO2jMgKMy7RljTjU
         zwQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776689378; x=1777294178;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sRtwY56nBQbf1x0k86FqJm1BNTc/81FVIoSrk2ABFhU=;
        b=SW+7NanTItGfjXTOKYxTblpxFuahe3+SH36WlT2Y3UNzoeqTWWpNXwy8a0X1gEc78q
         rghqeL6Jes7v9qhHIKiPLn1YGn6wZeVu2+1UZ66xWDLkhKk26TwRxDhXdc6mDaLFA58h
         ccASspXkcHJToEaG+i69vo/9HGliLEn3bY+oPtTjQbCpkJMVhjT9Cfd1cIAyL9TOi4pH
         ThNjG3+p3Z7GShMPH+fMx1T4QwLR8tYE9DLrR/Ui5TaU/pCOhWfhscGpAYKOCp+BN3oD
         ebngmyncdxOZMcEPihWPaRle/4BrMy9iZt9f5fidTjsSLATkjy3X5ZCCpjQtcswW531T
         b8Cg==
X-Forwarded-Encrypted: i=1; AFNElJ9G4+1uORH8jqD1aTLo/jR+2ArAxi0yC3VFEiofYOvSTz3cn4DAjAsc9YmPsbckBSeE7XX4IDnHYsU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPGVI5Bb731XZYwfCABUgUYfCUHIs/y2qLhWVUqBH94S32mnhh
	oiyBvuS4QoRzYmErbWvHkg+Bvep8ivzXlcsR7+42QmdKy1ud6GsSYAoXfrMheF958eCMvbgEOVE
	QbhekYgUi9XUbCNMrv761PkuKxis5GRcX6F7dDvbydUedFBLI18Z8IpBzKAG74/Lq5c/t
X-Gm-Gg: AeBDiesFMEbnpL79kOgDqfLSO8eM2F4VO97SvGpPBILO0niSehAWQCNorO7ANYxFP/x
	wplWjp4jMiC+tL9M5vHKKOQoB/P45PnFaAM/6B2ceB1xKuM6rE+PabN2VNPJS6GjpdmjioWK4Wf
	80HotFxPyfl0h2mh+Bzi/oqF33CYpX+fiAr+PjN2XtTV6oLCBzth5Bdttgvd70XuUrFbOKUSVmS
	TpWG7k1m/GQCZt75AHJz8eOO/TbvNHPubpOGy3E04Rmo6Kmg90W9/vuCQFjcmDPmHz37mxSiV4k
	BllSBKr778hOxxo57pXJ+hGzQ0e6wtcwMF6mw6jX1PsnPBPgU++FPjKg9RVmgLKIvoShkk874kE
	Aa3WE/KXpTt/o/6OyPTH/x9RwgETJ46sbfkM4XZcqWuYh+gxXPT948vfSgSa43vbnAen0bHcvbZ
	1EHx+pCDqyXi8AiQ==
X-Received: by 2002:a05:622a:4cce:b0:509:2b5a:808 with SMTP id d75a77b69052e-50e3683910cmr123783541cf.2.1776689378432;
        Mon, 20 Apr 2026 05:49:38 -0700 (PDT)
X-Received: by 2002:a05:622a:4cce:b0:509:2b5a:808 with SMTP id d75a77b69052e-50e3683910cmr123783251cf.2.1776689377998;
        Mon, 20 Apr 2026 05:49:37 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba451210e1bsm350415966b.3.2026.04.20.05.49.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2026 05:49:37 -0700 (PDT)
Message-ID: <e956b609-3e37-4c3c-9168-a50793722061@oss.qualcomm.com>
Date: Mon, 20 Apr 2026 14:49:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] phy: qcom: edp: Add eDP/DP mode switch support
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
 <20260302-edp_phy-v3-1-ca8888d793b0@oss.qualcomm.com>
 <245f4589-d7ca-4d6b-8162-a86972752bd8@oss.qualcomm.com>
 <12e8a8de-49b8-463a-8b88-2cbbf1ab901c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <12e8a8de-49b8-463a-8b88-2cbbf1ab901c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDEyNCBTYWx0ZWRfX+3qzf4fTHuAU
 bQXSa5imoQC0h59Qr5M6rRJ8uo0E4vAKKAvC9HmbhNeDNSXWivZCB8Fk7iJ/Hq0lqWHLbfcFh3L
 5hmz6PSRVFUUH82OA26QKtby/gwcUciEV2U1MUGNwMYZObl2Um7ZUELsv1A8hyabcKP1aqG8TxS
 FeSw8DCXtPeSKrmKCw2j/HaTxPcKBdukNouE6riD/UrjXYfdStboe9kKmcD/Vv5LQlXqgqtlG/d
 dljwwIZicfotywPOdxOvzttrrTQqWuciFxe1qxWCDtiUHTgL6+Xn89DcrZwBCr+ahkWjHHLGxyO
 gsMBkFQi0jxBhAh08lroWlgqxtOhNVLCDvpKGnUHxQvHOMUawxBGxExzA3O/HAh48oG2tCSGXWc
 EQTzSrY03BNK+I0BunICWVYyc9PBE3IoNgzi6izhGLdI6coC8roKsC5lxzu3kSTWYMoFJsiiB1m
 Lq78OoGD4m2uVqe1xsg==
X-Authority-Analysis: v=2.4 cv=BPmDalQG c=1 sm=1 tr=0 ts=69e620e3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ij7slcz6KMvQTOyTLR8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: hz5kNW0Av8gT8cNs787Z1ZNZR58qb1Fm
X-Proofpoint-GUID: hz5kNW0Av8gT8cNs787Z1ZNZR58qb1Fm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_02,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604200124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_054940_614961_3BA16A1F 
X-CRM114-Status: GOOD (  13.02  )
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

T24gNC8yMC8yNiAyOjQ4IFBNLCBZb25neGluZyBNb3Ugd3JvdGU6Cj4gCj4gCj4gT24gNC8xNi8y
MDI2IDU6MzQgUE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IE9uIDMvMi8yNiA5OjI4IEFNLCBZ
b25neGluZyBNb3Ugd3JvdGU6Cj4+PiBUaGUgZURQIFBIWSBzdXBwb3J0cyBib3RoIGVEUCZEUCBt
b2RlcywgZWFjaCByZXF1aXJlcyBhIGRpZmZlcmVudCB0YWJsZS4KPj4+IFRoZSBjdXJyZW50IGRy
aXZlciBkb2Vzbid0IGZ1bGx5IHN1cHBvcnQgZXZlcnkgY29tYm8gUEhZIG1vZGUgYW5kIHVzZQo+
Pj4gZWl0aGVyIHRoZSBlRFAgb3IgRFAgdGFibGUgd2hlbiBlbmFibGUgdGhlIHBsYXRmb3JtLiBJ
biBhZGRpdGlvbiwgc29tZQo+Pj4gcGxhdGZvcm1zIG1pc21hdGNoIGJldHdlZW4gdGhlIG1vZGUg
YW5kIHRoZSB0YWJsZSB3aGVyZSBEUCBtb2RlIHVzZXMKPj4+IHRoZSBlRFAgdGFibGUgb3IgZURQ
IG1vZGUgdXNlIHRoZSBEUCB0YWJsZS4KPj4+Cj4+PiBDbGVhbiB1cCBhbmQgY29ycmVjdCB0aGUg
dGFibGVzIGZvciBjdXJyZW50bHkgc3VwcG9ydGVkIHBsYXRmb3JtcyBiYXNlZCBvbgo+Pj4gdGhl
IEhQRyBzcGVjaWZpY2F0aW9uLgo+Pj4KPj4+IEhlcmUgbGlzdHMgdGhlIHRhYmxlcyBjYW4gYmUg
cmV1c2VkIGFjcm9zcyBjdXJyZW50IHBsYXRmb3Jtcy4KPj4+IERQIG1vZGXvvJoKPj4+IMKgwqDC
oMKgLXNhODc3NXAvc2M3MjgwL3NjODI4MHhwL3gxZTgwMTAwCj4+PiDCoMKgwqDCoC1nbHltdXIK
Pj4+IGVEUCBtb2RlKGxvdyB2ZGlmZik6Cj4+PiDCoMKgwqDCoC1nbHltdXIvc2E4Nzc1cC9zYzgy
ODB4cC94MWU4MDEwMAo+Pj4gwqDCoMKgwqAtc2M3MjgwCj4+Pgo+Pj4gQ2M6IHN0YWJsZUB2Z2Vy
Lmtlcm5lbC5vcmcKPj4+IEZpeGVzOiBmMTk5MjIzY2I0OTAgKCJwaHk6IHFjb206IEludHJvZHVj
ZSBuZXcgZURQIFBIWSBkcml2ZXIiKQo+Pj4gU2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcgTW91IDx5
b25neGluZy5tb3VAb3NzLnF1YWxjb21tLmNvbT4KPj4+IC0tLQo+Pgo+PiBJIHdlbnQgdGhyb3Vn
aCBldmVyeXRoaW5nIGFuZCBhbGwgdGhlIHNlcXVlbmNlcyBhcmUgT0suCj4+Cj4+IFNDODE4MFgg
d2lsbCBuZWVkIGNoYW5nZXMsIGJ1dCBpdCdzIGFscmVhZHkgaW5jb3JyZWN0IHNvIHRoaXMKPj4g
ZG9lc24ndCBuZWNlc3NhcmlseSBhZmZlY3QgaXQKPj4KPj4gVGhhbmtzIQo+Pgo+PiBSZXZpZXdl
ZC1ieTogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgo+Pgo+
PiBLb25yYWQKPiBUaGFua3MgaGVyZS4uIEkgZGlkbuKAmXQgbm90aWNlIGJlZm9yZSB0aGF0IFND
ODE4MFggaXMgZGlmZmVyZW50IGZyb20gU0M3MjgwLCBhbmQgd2lsbCBjb3JyZWN0IGl0IGluIHRo
ZSBuZXh0IHZlcnNpb24uCgpQbGVhc2UgbWFrZSBpdCBhbm90aGVyIHBhdGNoIG9uIHRvcCBvZiB0
aGVzZSB0d28sIHNvIHRoYXQgd2UgZG9uJ3QgaGF2ZQp0byByZS12YWxpZGF0ZSB0aGUgZXhpc3Rp
bmcgZGlmZgoKS29ucmFkCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
