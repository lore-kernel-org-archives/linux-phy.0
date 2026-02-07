Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBC14EE0AC6
	for <linux-phy@archiver.kernel.org>; Sat,  7 Feb 2026 10:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qfHIQybykCxGh20ZCrHfP5OFfFLCX/s4BnKVq0K3pw=; b=14299sBJy3lW0a
	oEFFRKyPw9vYP/oIA6U7peroFSarM9KYPob1FuUeTITOdneeVa2oqa/29WJqTsfdP9+9eY2YYp6iI
	7yOS8dhTP2CFRAmWc7M8P0E0RdBjyNntdvROeP+NuvHFxJTdTiiE8oS2kdV2ktXti73Xm5eMydogT
	75Ts7Jpv7qJS6kJtIuOYMs3Xcm3DNbD/xcTj7kxiXdKKjEcqCWeX2Yo5/MSvaY5veyAswqNMgEMEu
	3BaKWu+sFOaaIUDMX25KsA5dzNzbBn/Qx+9tBtED/F4zTj42Mri5dT3/9adjHGmOozN8BN5Jb418F
	pvyrd76niBCu6PcHH0CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vofNh-0000000CIpk-18Oh;
	Sat, 07 Feb 2026 10:17:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vofNe-0000000CIpO-2pf5
	for linux-phy@lists.infradead.org;
	Sat, 07 Feb 2026 10:17:36 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6174Nq7L1628511
	for <linux-phy@lists.infradead.org>; Sat, 7 Feb 2026 10:17:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bUDIGIgfx6JHfOt1ZmnmTE3cE//s+7XfbWbMIrAf6D8=; b=Vaq/Zd5ayWAWr1lc
	TBRfZeWfSLVzVrZpjPNiwtwJfaqKfY4BZnxp1G4G7LMllvtAwQKyMSMskjNhVuWK
	ALv6lB0SpQ+CbuzKGHcq6aZfRSuvXLu3YpkbzdFXcizRlzsZly0YgA8UNMriz44m
	hmOB3WP+4EauCPNjmxY92MNlp0f08OMYE5d5PJj1TQ5IfNzWVymv+aXibwmlYxUx
	ugZpoK0B5rN7JOKcJXytbPCdvjF4nP7DOU0/UBoSSHcQC1K99jk30bRpbr8TznpG
	NZVU8IXeQNwsVRfvoljNSyyGz1C/kjno3s9tlbwv+iJf0Td0YuSsYNrQOIeP/SEC
	YqCdwQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xb50h5g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 07 Feb 2026 10:17:33 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70b4b53e4so602088385a.1
        for <linux-phy@lists.infradead.org>; Sat, 07 Feb 2026 02:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770459452; x=1771064252; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bUDIGIgfx6JHfOt1ZmnmTE3cE//s+7XfbWbMIrAf6D8=;
        b=G4TPsCIYOfrK8RY6E2zsIGi40TCqZkpbSEEdQ4AbQ+c1I9l5G1C5Ijqvxna9BB2zbS
         1EKsIDZ3PrlO4aS0knk7CIaZ7nbX0fBCdgGkbvm5tFp8AE0uRoOhLn6Npbxx5CN3MoBi
         KGEJLEMY/gDZ/nARvjm9Bqai8TiDurDwP+Ps+Od7Nk8fbBb6XCGw7TzYYVwZHACuTxNW
         OvigdIAVD+1dEDAJvCJVgHorF8g+VDAKkWlQwPQ5qUF8ci7O4EUT77lHodtsUcNz9Vw1
         Hhgg3bNywDNO15nRxiyzkYij0ony2lSpSKYaE68RafWIsO4c+DoM1uXkqt/nmMvDMwfn
         kKxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770459452; x=1771064252;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bUDIGIgfx6JHfOt1ZmnmTE3cE//s+7XfbWbMIrAf6D8=;
        b=xJdF54ms+0cfx66vEdYw4TTA0Klj0HmQHa2BpHs1j0CRzt24sUPJV7KJajiL4LMFfX
         rFeDQA3dLslHFo+EDUmfjo0cGa7TdzK1tshd8lBHVFjXyMT1oDdnBLbUifR+OLUGShbz
         eiGXhOdPeWl6HrPZBv6zO6a5SMwAX3ttlQwyX37AMwez+aeNv8UEzKM+hXujtWApbLOh
         D2BWfqZUZK7V8PpnJMw+g3pgUkzDwOEmvw6MiXaeowpbJMocotQjHrwdJ115DoOboJ1H
         bfxtM3QQDsJn7pxoJQL8aBD89iWz6TP3d8XPU65e/CXlWErY05tS0X+lot/JSZBSx8R4
         ZpXg==
X-Forwarded-Encrypted: i=1; AJvYcCW7HUqZvo9R++4BsnzftiqG01s/bcgE3tRHYTaf2KYOATK5fyryRPaTZbGwSI3c3H1RwPOyGYF2CAo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZJzkdln51UHKF0Q0smJUC6WXoT2811QyjsA+wjc99ZST4FePe
	rYINEsUUiDJ6xBplMYsVK0vEdhPLivqTn3yGO1TQ4v14bttJcFfP9BbnbzyZLlinISSo4ABiAvl
	Lvj9s8C8+s6VTuZhIBpW0a1Wb+35DrWHhR9sfjuvGYhI7MQsFbtc2ds1iHB/Tqt4HYXva
X-Gm-Gg: AZuq6aJhXwwL4cLD4bnIdWyaeRLfHmpG2L3GDy8ZL9rwtaoFLajSyaH+7H202EcH8Bq
	HVt8X5QDyyFcOM0TuAQt9h7axrM178r0qil4uxb+EGsmS2Xmo6E6GXniSnfGP6R73z7GC1xjBHP
	qb0izX//dVK2uPaVobr81ukVKoAvYdRTXFt0rltYW5TG9zdkfD3lUpX88pisv/qI6X8lytbtlml
	455fYo2PHd/3AAFuExSf0Cfajck4wVOsBBi6QjZdoPa+/6fSlqrHTWTkCHtWP5j0uJyjB/qUIur
	zCprPS1+PDHSKcjJ1XHBYVQcmKqoKWx6yAkhmiOVvmvjaa0R21rjUuNv3pbDKLW30Ne4/cqNIE2
	tRH3YxlN5wNzcG2Tr7ClIsSIIffT5AWpc5hXxz7iIWSGo+3yvIfeq2ZPtGvN0y3Yom/4QVKQlNp
	MUeCMeV/8z+k2J6x2xopitR5E=
X-Received: by 2002:a05:620a:3f97:b0:8ca:305b:747e with SMTP id af79cd13be357-8caf1db90c3mr669151085a.88.1770459452533;
        Sat, 07 Feb 2026 02:17:32 -0800 (PST)
X-Received: by 2002:a05:620a:3f97:b0:8ca:305b:747e with SMTP id af79cd13be357-8caf1db90c3mr669149185a.88.1770459452009;
        Sat, 07 Feb 2026 02:17:32 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44e21c9fsm1214759e87.77.2026.02.07.02.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 02:17:31 -0800 (PST)
Date: Sat, 7 Feb 2026 12:17:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] phy: qcom: edp: Add per-version LDO configuration
 callback
Message-ID: <nxoukhntz3mn6m5qca2lk6wubhwlmxoldh6xpyxx63voseiw35@5rrwfryx6vww>
References: <20260205-edp_phy-v1-0-231882bbf3f1@oss.qualcomm.com>
 <20260205-edp_phy-v1-2-231882bbf3f1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205-edp_phy-v1-2-231882bbf3f1@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=QMBlhwLL c=1 sm=1 tr=0 ts=6987113d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=ZHrqIDRvDTCMx_ORvVYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: KmzdNMUtHUI_ALS4zjqwbMlULcstW8If
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA3MDA4MSBTYWx0ZWRfXzHCW239TPSgV
 IT1N3VYAQyWPKT8n+1vB68xEPYKHuCEbMv5e8q5TcwjjCCJ35bapPyDo8E6ZVLg3tSWQiKgWNMO
 A9xZZtNf1uGwaTnusznZp1BCcREROj4DtgDuXhTVXp4tupOFY04LCQDM2dilwkAy2WyHHVN++aD
 SNaSMsA4NZQxpXMMMc+6ajonl+MOpFswKgaYSIBqo1X+obcR0ggpha6doEM2orEmOJUJ/eN2KNG
 +yEMKJzkmPnhKwnzHmzQBspTCFDXucWNMVAIXVF9JuTi+hWnSJK/opUkynvvBziE5O2Rauewm46
 JUzaNe6kX84a76wo4rZJ+tKNnNZfIr2jSAynUIvJbIBpqliYQqca+7VWovhiPN+54jaHtYoqYxH
 FtMrpvJY7n3PkZlhKoJyamt8UAyU2jPbCRGYAkJxB+vR/GTN+rDwm0KcrBB+nqRUFoin+FQVe7l
 f35TahbXTL8iQvcsuZw==
X-Proofpoint-ORIG-GUID: KmzdNMUtHUI_ALS4zjqwbMlULcstW8If
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602070081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_021734_764452_A5EB3A27 
X-CRM114-Status: GOOD (  24.17  )
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

T24gVGh1LCBGZWIgMDUsIDIwMjYgYXQgMDU6MjA6NTRQTSArMDgwMCwgWW9uZ3hpbmcgTW91IHdy
b3RlOgo+IEludHJvZHVjZSB0aGUgY29tX2xkb19jb25maWcgY2FsbGJhY2sgdG8gc3VwcG9ydCBw
ZXLigJFQSFkgTERPCj4gY29uZmlndXJhdGlvbi4KCk1pc3NpbmcgdGhlIHdoeSBwYXJ0LiBJcyB0
aGUgZHJpdmVyIHByb2dyYW1taW5nIGluY29ycmVjdCB2YWx1ZXMsIG9yIGlzCml0IGFuIG9wdGlt
aXNhdGlvbj8gSW4gdGhlIGZvcm1lciBjYXNlIGl0IG5lZWRzIEZpeGVzLCBtYXliZSBjYzpzdGFi
bGUsCm1heWJlIFJlcG9ydGVkLWJ5LCBldGMuCgo+IAo+IFNpZ25lZC1vZmYtYnk6IFlvbmd4aW5n
IE1vdSA8eW9uZ3hpbmcubW91QG9zcy5xdWFsY29tbS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jIHwgODYgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNzYgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVk
cC5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZWRwLmMKPiBpbmRleCAxMGNiYjdk
OWE4YTAuLjM4ODIyNmRiYWQ3ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1lZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5j
Cj4gQEAgLTgxLDYgKzgxLDcgQEAgc3RydWN0IHBoeV92ZXJfb3BzIHsKPiAgCWludCAoKmNvbV9j
bGtfZndkX2NmZykoY29uc3Qgc3RydWN0IHFjb21fZWRwICplZHApOwo+ICAJaW50ICgqY29tX2Nv
bmZpZ3VyZV9wbGwpKGNvbnN0IHN0cnVjdCBxY29tX2VkcCAqZWRwKTsKPiAgCWludCAoKmNvbV9j
b25maWd1cmVfc3NjKShjb25zdCBzdHJ1Y3QgcWNvbV9lZHAgKmVkcCk7Cj4gKwlpbnQgKCpjb21f
bGRvX2NvbmZpZykoY29uc3Qgc3RydWN0IHFjb21fZWRwICplZHApOwo+ICB9Owo+ICAKPiAgc3Ry
dWN0IHFjb21fZWRwX3BoeV9jZmcgewo+IEBAIC0yNzMsNyArMjc0LDcgQEAgc3RhdGljIGludCBx
Y29tX2VkcF9zZXRfdm9sdGFnZXMoc3RydWN0IHFjb21fZWRwICplZHAsIGNvbnN0IHN0cnVjdCBw
aHlfY29uZmlndXIKPiAgCWNvbnN0IHN0cnVjdCBxY29tX2VkcF9zd2luZ19wcmVfZW1waF9jZmcg
KmNmZyA9IGVkcC0+Y2ZnLT5zd2luZ19wcmVfZW1waF9jZmc7Cj4gIAl1bnNpZ25lZCBpbnQgdl9s
ZXZlbCA9IDA7Cj4gIAl1bnNpZ25lZCBpbnQgcF9sZXZlbCA9IDA7Cj4gLQl1OCBsZG9fY29uZmln
Owo+ICsJaW50IHJldDsKPiAgCXU4IHN3aW5nOwo+ICAJdTggZW1waDsKPiAgCWludCBpOwo+IEBA
IC0zMDAsMTMgKzMwMSwxMyBAQCBzdGF0aWMgaW50IHFjb21fZWRwX3NldF92b2x0YWdlcyhzdHJ1
Y3QgcWNvbV9lZHAgKmVkcCwgY29uc3Qgc3RydWN0IHBoeV9jb25maWd1cgo+ICAJaWYgKHN3aW5n
ID09IDB4ZmYgfHwgZW1waCA9PSAweGZmKQo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAKPiAtCWxk
b19jb25maWcgPSBlZHAtPmlzX2VkcCA/IDB4MCA6IDB4MTsKPiArCXJldCA9IGVkcC0+Y2ZnLT52
ZXJfb3BzLT5jb21fbGRvX2NvbmZpZyhlZHApOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0
Owo+ICAKPiAtCXdyaXRlbChsZG9fY29uZmlnLCBlZHAtPnR4MCArIFRYbl9MRE9fQ09ORklHKTsK
PiAgCXdyaXRlbChzd2luZywgZWRwLT50eDAgKyBUWG5fVFhfRFJWX0xWTCk7Cj4gIAl3cml0ZWwo
ZW1waCwgZWRwLT50eDAgKyBUWG5fVFhfRU1QX1BPU1QxX0xWTCk7Cj4gIAo+IC0Jd3JpdGVsKGxk
b19jb25maWcsIGVkcC0+dHgxICsgVFhuX0xET19DT05GSUcpOwo+ICAJd3JpdGVsKHN3aW5nLCBl
ZHAtPnR4MSArIFRYbl9UWF9EUlZfTFZMKTsKPiAgCXdyaXRlbChlbXBoLCBlZHAtPnR4MSArIFRY
bl9UWF9FTVBfUE9TVDFfTFZMKTsKPiAgCj4gQEAgLTUzMCw2ICs1MzEsNTIgQEAgc3RhdGljIGlu
dCBxY29tX2VkcF9jb21fY29uZmlndXJlX3BsbF92NChjb25zdCBzdHJ1Y3QgcWNvbV9lZHAgKmVk
cCkKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50IHFjb21fZWRwX2xkb19jb25m
aWdfdjMoY29uc3Qgc3RydWN0IHFjb21fZWRwICplZHApCj4gK3sKPiArCWNvbnN0IHN0cnVjdCBw
aHlfY29uZmlndXJlX29wdHNfZHAgKmRwX29wdHMgPSAmZWRwLT5kcF9vcHRzOwo+ICsJdTMyIGxk
b19jb25maWc7Cj4gKwo+ICsJaWYgKCFlZHAtPmlzX2VkcCkKPiArCQlsZG9fY29uZmlnID0gMHgw
Owo+ICsJZWxzZSBpZiAoZHBfb3B0cy0+bGlua19yYXRlIDw9IDI3MDApCj4gKwkJbGRvX2NvbmZp
ZyA9IDB4ODE7Cj4gKwllbHNlCj4gKwkJbGRvX2NvbmZpZyA9IDB4NDE7Cj4gKwo+ICsJd3JpdGVs
KGxkb19jb25maWcsIGVkcC0+dHgwICsgVFhuX0xET19DT05GSUcpOwo+ICsJd3JpdGVsKGxkb19j
b25maWcsIGVkcC0+dHgxICsgVFhuX0xET19DT05GSUcpOwo+ICsKPiArCXJldHVybiAwOwo+ICt9
Cj4gKwo+ICtzdGF0aWMgaW50IHFjb21fZWRwX2xkb19jb25maWdfdjQoY29uc3Qgc3RydWN0IHFj
b21fZWRwICplZHApCj4gK3sKPiArCWNvbnN0IHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfZHAg
KmRwX29wdHMgPSAmZWRwLT5kcF9vcHRzOwo+ICsJdTMyIGxkb19jb25maWc7Cj4gKwo+ICsJaWYg
KCFlZHAtPmlzX2VkcCkKPiArCQlsZG9fY29uZmlnID0gMHgwOwo+ICsJZWxzZSBpZiAoZHBfb3B0
cy0+bGlua19yYXRlIDw9IDI3MDApCj4gKwkJbGRvX2NvbmZpZyA9IDB4QzE7CgpMb3dlcmNhc2Ug
aGV4Cgo+ICsJZWxzZQo+ICsJCWxkb19jb25maWcgPSAweDgxOwo+ICsKPiArCXdyaXRlbChsZG9f
Y29uZmlnLCBlZHAtPnR4MCArIFRYbl9MRE9fQ09ORklHKTsKPiArCXdyaXRlbChsZG9fY29uZmln
LCBlZHAtPnR4MSArIFRYbl9MRE9fQ09ORklHKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsK
PiArc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfdmVyX29wcyBxY29tX2VkcF9waHlfb3BzX3YzID0g
ewo+ICsJLmNvbV9wb3dlcl9vbgkJPSBxY29tX2VkcF9waHlfcG93ZXJfb25fdjQsCj4gKwkuY29t
X3Jlc2V0c21fY250cmwJPSBxY29tX2VkcF9waHlfY29tX3Jlc2V0c21fY250cmxfdjQsCj4gKwku
Y29tX2JpYXNfZW5fY2xrYnVmbHIJPSBxY29tX2VkcF9jb21fYmlhc19lbl9jbGtidWZscl92NCwK
PiArCS5jb21fY2xrX2Z3ZF9jZmcJPSBxY29tX2VkcF9jb21fY2xrX2Z3ZF9jZmdfdjQsCj4gKwku
Y29tX2NvbmZpZ3VyZV9wbGwJPSBxY29tX2VkcF9jb21fY29uZmlndXJlX3BsbF92NCwKPiArCS5j
b21fY29uZmlndXJlX3NzYwk9IHFjb21fZWRwX2NvbV9jb25maWd1cmVfc3NjX3Y0LAo+ICsJLmNv
bV9sZG9fY29uZmlnCQk9IHFjb21fZWRwX2xkb19jb25maWdfdjMsCj4gK307Cj4gKwo+ICBzdGF0
aWMgY29uc3Qgc3RydWN0IHBoeV92ZXJfb3BzIHFjb21fZWRwX3BoeV9vcHNfdjQgPSB7Cj4gIAku
Y29tX3Bvd2VyX29uCQk9IHFjb21fZWRwX3BoeV9wb3dlcl9vbl92NCwKPiAgCS5jb21fcmVzZXRz
bV9jbnRybAk9IHFjb21fZWRwX3BoeV9jb21fcmVzZXRzbV9jbnRybF92NCwKPiBAQCAtNTM3LDYg
KzU4NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGh5X3Zlcl9vcHMgcWNvbV9lZHBfcGh5X29w
c192NCA9IHsKPiAgCS5jb21fY2xrX2Z3ZF9jZmcJPSBxY29tX2VkcF9jb21fY2xrX2Z3ZF9jZmdf
djQsCj4gIAkuY29tX2NvbmZpZ3VyZV9wbGwJPSBxY29tX2VkcF9jb21fY29uZmlndXJlX3BsbF92
NCwKPiAgCS5jb21fY29uZmlndXJlX3NzYwk9IHFjb21fZWRwX2NvbV9jb25maWd1cmVfc3NjX3Y0
LAo+ICsJLmNvbV9sZG9fY29uZmlnCQk9IHFjb21fZWRwX2xkb19jb25maWdfdjQsCj4gIH07Cj4g
IAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3BoeV9jZmcgc2E4Nzc1cF9kcF9waHlf
Y2ZnID0gewo+IEBAIC01NTAsNyArNTk4LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxY29tX2Vk
cF9waHlfY2ZnIHNhODc3NXBfZHBfcGh5X2NmZyA9IHsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBx
Y29tX2VkcF9waHlfY2ZnIHNjNzI4MF9kcF9waHlfY2ZnID0gewo+ICAJLmF1eF9jZmcgPSBlZHBf
cGh5X2F1eF9jZmdfdjQsCj4gIAkudmNvX2Rpdl9jZmcgPSBlZHBfcGh5X3Zjb19kaXZfY2ZnX3Y0
LAo+IC0JLnZlcl9vcHMgPSAmcWNvbV9lZHBfcGh5X29wc192NCwKPiArCS52ZXJfb3BzID0gJnFj
b21fZWRwX3BoeV9vcHNfdjMsCgpUaGlzIGxvb2tzIGxpa2UgYW4gZXh0cmEgY2hhbmdlLiBJcyBp
dCBpbnRlbnRpb25hbCBpbiB0aGlzIHBhdGNoPyBJZiBzbywKbWVudGlvbiBpdCBpbiB0aGUgY29t
bWl0IG1lc3NhZ2UuCgo+ICB9Owo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBxY29tX2VkcF9w
aHlfY2ZnIHNjODI4MHhwX2RwX3BoeV9jZmcgPSB7CgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0
cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
