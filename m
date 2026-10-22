Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A95606A31A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 02:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QQB2jE7p;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=XJohVKtF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=MYLDLoQV
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gz/nMrqf3thQ4vd9jFLh6AWGgcP3kptAYTP4wFkRC/Y=; b=QQB2jE7pvYoFGY
	ePDo/1Aq/3Imw1EYAr2OdjrEhzBpEGF09/FLs7q5wlR41csCiDqG9tzF+tTmZeKVW8dRQ4uhXHcoj
	9PbgtxYnTf+5C8HZrn0dQwN97EfPumuu61iKpYyX3pCdL53y4DQ1UfUJ8RZnBR4aE9WIzNzPR3QYc
	vILPeOyGINRpG4ltJ5OU8c2MA1VeDzi50+R7vFWEeNe9jOS3I4YTRYoAHj5AZ2oL4SBh87lh/Lg2S
	f8liM0BhtMXlSl62zaQ8JkhK6+ecHNbY6gUREWBQDWAVQpOO0uVzsSOySL48jMkgS9VfUovZO53Tz
	tBe8/9U4UpZRGWfNgDxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJioZ-0000000DEHM-2SHC;
	Thu, 22 Oct 2026 02:45:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJioU-0000000DEGl-2X8A
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 02:45:58 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69M1iA572380607
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 02:45:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VT2q5PxrXQMvAOxWgRFp/t4Oj4pTE0hgdrfmC+nu3PA=; b=XJohVKtFLbEQJtqr
	i0BZJt8tw1JXFt+FCRfjwxZO/uUfh0EhxsD6/AByuMi+AzUAaACTB2zwc5mAkF0Z
	+tEJwWOyZ1JVMCleU5XFWrphSkLVH565hB/6StVw9uaBpwqmwdHmQCbLXcEGWAo8
	op9KCtMiVnT1H44ssTknAK/aZd8bOHeX8RaGNEEOdY5nGhgOz3p2TaJsNYqd+SD9
	ZqQZY0gWeVIoebb3WDNojxI3yebznjlnbFLNxzIr4MCPOiWpCSzk0KVEWMqA4Smo
	20kbUB4u75QoqS5HVJXUTs4dT4qycsoF7WQgB8VaJzTaWEUEIXjFQIdHxgLzvF2h
	ETUYSA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93a0c2s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 02:45:53 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-86fa6b15ed3so2010433b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Oct 2026 19:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792637152; x=1793241952; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VT2q5PxrXQMvAOxWgRFp/t4Oj4pTE0hgdrfmC+nu3PA=;
        b=MYLDLoQVMB20MFDwDqu/d4pST4cF2FgapIcyLjdb9dQY8ykW42ZtLFIEbWf7yzLhST
         P7Es7bp8RRFaH2oltZ81tqqr0ThLVhqX4PWdZxA1Cgkzws+DqN6OXqQxjfxDWuAD/eFa
         JNO8/KDWGXvnY0graazwRHt5FgWe0Rw1PcaQ4AK5MqFFJXBoKlVbAiZGmtDkzT30TDOA
         qCwWGIItOqQ/R1inPEc82zWRIuADO+C/FrAgbk7GuR26bxQOP3V6unuSBv1zrHG2UQS5
         6MtllY6UEEEYE7IZ2JhAUPRERareobXLNdw6GB4/aX7pNDRmylJtauDB3yL0N6KSd/Rb
         Otpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792637152; x=1793241952;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VT2q5PxrXQMvAOxWgRFp/t4Oj4pTE0hgdrfmC+nu3PA=;
        b=Bd7bFUfC5g+XY7T1iMjaiGAXaNunxRFTSV06UDEAvebLUnVUyygOgtL9+e4RSBxvbz
         NCE98AVOwzHLSLdmcHO/LHaPVBDdMsH3YHJbJqQyJGqq7s+tE7/fWOFRsuL/yYV7LX3A
         VZ+loJTkxRWjwdkce02GnL538ORo3woYYxt90GAIlFHyFeoDVwsgFn4qHE39lkI57Ln6
         ZRhk8ZWRVrIAHUQFawjd2tOoudqCL4KfhC1+XI2XRj/ng81vDJAQ8aCveqwoU4yg3SKT
         HP3nsQbFH/txmdmsBU7PXhj+OP9Jh/84+93DKtnBMuRSGb3kBtONe/sFmgSEqfK7nrX3
         kprw==
X-Forwarded-Encrypted: i=1; AKwUvByCE/GofHZWQAcq/58pItDg+Q5aJJLOl0uSLsiG6O3iCT6zyfoctXfSiJYi/2AZAdIB790MHIwd6E0=@lists.infradead.org
X-Gm-Message-State: AFq9FYKw6DLWuqDfqc8NPjKCRWazL07e+tFXkvITh1bAqQdDZvoZ3uqO
	Ww5nebSxEDjBB1rtuSPBEAjqn8ak9Yr0/jgqnTnqFctmgBo+5LxbY21qFzvvqn1msQKKf43P7Ly
	26Y9IzsSdunfD9PLNqmAg18ZIak/xO1J5LI5l7TTB/3f5Y72Hr67xdgCKNtWA9W4OtvpP
X-Gm-Gg: AYBFou1KsnzXRyrVFvisTD6taUHCdsv6eWvf3QZ/Oy0IxE5HTrCgxGgmC9UsHt5sQnk
	dWs+KVg9PnecazEWJ478wbrr8jyC7nmXPKKycPZFrFZbbYGog2TaPfj13CoY6/3wTI8ItofsGIe
	QVB5l494ov/xhZUVlCCFnjmDvlHJv6VPW5onzsIxsY7LyEweJcghludnFV0yqzTRtsLUNQ23HBK
	yCUP1KDXdBd4hYJZdasZLSY4OQLlc2qIMiOAqJPxANJz26j7Qqnx4srz/Z/FQpYBoVN9pag9HzY
	9yFYTXI29IEMVpPdZwdxV3gp+cUU5ssfbRtys4diVD+rAPXBRGDrl+3keCxKYI6ZXyuBEXfjSWv
	d1ukfzo5T/HN+11+7nhnNmkogt4bsvMEJAPgxg14eh8YPBmfF6cPsixIy7ILx
X-Received: by 2002:a05:6a00:e0b:b0:8a0:7ba9:93a8 with SMTP id d2e1a72fcca58-8a089de7130mr3052470b3a.23.1792637152406;
        Wed, 21 Oct 2026 19:45:52 -0700 (PDT)
X-Received: by 2002:a05:6a00:e0b:b0:8a0:7ba9:93a8 with SMTP id d2e1a72fcca58-8a089de7130mr3052440b3a.23.1792637151841;
        Wed, 21 Oct 2026 19:45:51 -0700 (PDT)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8a0895fa967sm1474761b3a.47.2026.10.21.19.45.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2026 19:45:51 -0700 (PDT)
Message-ID: <908cfb78-b343-4abe-a3bf-81b5e5d08c1d@oss.qualcomm.com>
Date: Thu, 22 Oct 2026 10:45:44 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 04/14] media: qcom: camss: Issue stream-on REG_UPDATE
 from CSID
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Bryan O'Donoghue
 <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-4-04fd28d815c6@oss.qualcomm.com>
 <3843110c-4766-4352-ab2a-6d3017336534@oss.qualcomm.com>
 <dbde0e35-8246-4f69-b3be-cd617a1767d9@linaro.org>
 <c1a0dfe9-34bb-4d24-9644-0f758aff0af0@oss.qualcomm.com>
 <CAFEp6-16PUJzLKZUBrC2g7oh8pN_Tygrf6wYX53nL+YM4ZvunQ@mail.gmail.com>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <CAFEp6-16PUJzLKZUBrC2g7oh8pN_Tygrf6wYX53nL+YM4ZvunQ@mail.gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDAxMCBTYWx0ZWRfXzw9DlqEK2pwD
 xjO7Dj6jzArN7L0vm/QMwBjjQMY7sbbfH6R5vfcetZvDxRsiLK+krYOh4mJNSJpBmT+Vs9UBHzd
 h+iy8tOqwFWi5qkw3RqglZhfqstSKo+HKrlYv2ZOQsRKFf8aw+Y9ZVGer6yIW0i3Xd42Km+bChN
 TZntOxhQ1tIh2pXd4Hc1vJeHJbbbkHsJ98sUwmsWL3eprA4KzKrmB+9vTEIAekPJW2Zlafmo4lY
 OMnbOO4FDIQiz10Tccm94o6NyTYQ6nAvt+Ad1wmrRrfzX4aA5XX/4VIJXqt2gYthPgkvt9Wfu2S
 byLzpA21k4I3DLf+Yx3XY/q8BJxktRlvrvUao75/o6SUDkuw8FSycFJcrk0M9Ph+MbWo7CGhWk/
 omxdyz+qmP4i8d1Qg84LsnioG3Lk5XzylCv2LUGrIVZOjf6P/mepD+b2cCKQLB3FeLZaKobmXFD
 SxiJrAwwKx67Ii2IH7g==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDAxMCBTYWx0ZWRfX28l+XQc/bHfV
 pelFMh+OgxehxxMUI8TR6XieA/NqsNysgx1qWWCwjmf8QRE8BZ+RuUFyEAEIlKKSLfXO8Z3GO7g
 jtBwhjAOX8RTBOba1ZrmXBd5esSzFTI=
X-Proofpoint-GUID: oQMM8UBJsEk38FbyZfZ_djFXVhaCkXfK
X-Authority-Analysis: v=2.4 cv=NaFzRGD4 c=1 sm=1 tr=0 ts=6ad978e1 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ev2TUFqRJCULxgkWBQ0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: oQMM8UBJsEk38FbyZfZ_djFXVhaCkXfK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0
 phishscore=0 priorityscore=1501 adultscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610220010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_194556_883318_8F6071B1 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMjEvMjAyNiA5OjAwIFBNLCBMb2ljIFBvdWxhaW4gd3JvdGU6Cj4gT24gV2VkLCBPY3Qg
MjEsIDIwMjYgYXQgMToyNOKAr1BNIEhhbmd4aWFuZyBNYQo+IDxoYW5neGlhbmcubWFAb3NzLnF1
YWxjb21tLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDEwLzIxLzIwMjYgNDo1MyBQTSwgQnJ5YW4gTydE
b25vZ2h1ZSB3cm90ZToKPj4+IE9uIDIxLzEwLzIwMjYgMDg6MzcsIFdlbm1lbmcgTGl1IHdyb3Rl
Ogo+Pj4+Cj4+Pj4gSGkgQnJ5YW4sIEhhbmd4aWFuZywKPj4+Pgo+Pj4+IE9uIDEwLzEyLzIwMjYg
Mjo0NSBQTSwgSGFuZ3hpYW5nIE1hIHdyb3RlOgo+Pj4+PiBPbiBzdHJlYW0tb24sIENBTVNTIHN0
YXJ0cyB0aGUgc3ViZGV2aWNlcyB1cHN0cmVhbSBmcm9tIHRoZSB2aWRlbyBub2RlCj4+Pj4+IHRo
cm91Z2ggdGhlaXIgc2luayBwYWRzLCBzbyB0aGUgVkZFIGlzIHN0YXJ0ZWQgYmVmb3JlIHRoZSBD
U0lELgo+Pj4+Pgo+Pj4+PiBTdGFydGluZyB3aXRoIENTSUQgNjgwLCB0aGUgUkVHX1VQREFURSBp
cyBpc3N1ZWQgdGhyb3VnaCB0aGUgQ1NJRAo+Pj4+PiByYXRoZXIgdGhhbiB0aGUgVkZFLiBIb3dl
dmVyLCB2ZmVfZW5hYmxlX291dHB1dF92MigpIHN0aWxsIGlzc3VlcyBhCj4+Pj4+IFJFR19VUERB
VEUgYWZ0ZXIgcXVldWVpbmcgZWFjaCBpbml0aWFsIGJ1ZmZlciwgYmVmb3JlIHRoZSBDU0lEIGhh
cwo+Pj4+PiBjb25maWd1cmVkIHRoZSBzdHJlYW0uIFRoZSBWRkUgdGhlbiBuZXZlciBzaWduYWxz
IEJVRl9ET05FLiBUaGVyZWZvcmUsCj4+Pj4+IHRoZSBDQU1TUyBub3cgaXNzdWVzIHRoZSBSRUdf
VVBEQVRFIGZyb20gY29uZmlndXJlX3N0cmVhbSgpIG9uIENTSUQgNjgwCj4+Pj4+IGFuZCBDU0lE
IEdlbjMgaW5zdGVhZC4gVGhlIG9wZXJhdGlvbiBoYXBwZW5zIGFmdGVyIHRoZSBSWCBjb25maWd1
cmF0aW9uCj4+Pj4+IGFuZCBiZWZvcmUgdGhlIFJESSBwYXRoIGlzIGVuYWJsZWQuCj4+Pj4+Cj4+
Pj4+IFNraXAgdGhlIFZGRS1zaWRlIHN0cmVhbS1vbiBSRUdfVVBEQVRFIG9ubHkgd2hlbiB0aGUg
Q1NJRCBjb25uZWN0ZWQgdG8KPj4+Pj4gdGhlIFZGRSBzaW5rIHBhZCBpbXBsZW1lbnRzIHRoZSBy
ZWdfdXBkYXRlIGNhbGxiYWNrLiBQbGF0Zm9ybXMgd2hvc2UKPj4+Pj4gQ1NJRCBkb2VzIG5vdCBw
cm92aWRlIHRoaXMgY2FsbGJhY2ssIGFzIHdlbGwgYXMgbGluZXMgZmVkIGJ5IElTUElGLAo+Pj4+
PiBrZWVwIHRoZSBleGlzdGluZyBWRkUtc2lkZSBSRUdfVVBEQVRFLgo+Pj4+Pgo+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBIYW5neGlhbmcgTWEgPGhhbmd4aWFuZy5tYUBvc3MucXVhbGNvbW0uY29tPgo+
Pj4+PiAtLS0KPj4+Pj4gICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNz
LWNzaWQtNjgwLmMgfCAgMyArKwo+Pj4+PiAgICAuLi4vbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1z
cy9jYW1zcy1jc2lkLWdlbjMuYyAgICB8ICAzICsrCj4+Pj4+ICAgIGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUuYyAgICAgIHwgMzcgKysrKysrKysrKysKPj4+Pj4g
KyArKysrKysrKystCj4+Pj4+ICAgIDMgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtNjgwLmMgYi8KPj4+Pj4gZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtNjgwLmMKPj4+Pj4gaW5kZXggMzQ1YTY3Yzhm
Yjk0Li41NTZjZGZlZjYyMDcgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLTY4MC5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLTY4MC5jCj4+Pj4+IEBAIC0yOTYsNiArMjk2
LDggQEAgc3RhdGljIHZvaWQgX19jc2lkX2NvbmZpZ3VyZV9yZGlfc3RyZWFtKHN0cnVjdAo+Pj4+
PiBjc2lkX2RldmljZSAqY3NpZCwgdTggZW5hYmxlLCB1OAo+Pj4+PiAgICAgICAgd3JpdGVsKHZh
bCwgY3NpZC0+YmFzZSArIENTSURfUkRJX0NGRzAocG9ydCkpOwo+Pj4+PiAgICB9Cj4+Pj4+ICtz
dGF0aWMgdm9pZCBjc2lkX3N1YmRldl9yZWdfdXBkYXRlKHN0cnVjdCBjc2lkX2RldmljZSAqY3Np
ZCwgaW50Cj4+Pj4+IHBvcnRfaWQsIGJvb2wgaXNfY2xlYXIpOwo+Pj4+PiArCj4+Pj4+ICAgIHN0
YXRpYyB2b2lkIGNzaWRfY29uZmlndXJlX3N0cmVhbShzdHJ1Y3QgY3NpZF9kZXZpY2UgKmNzaWQs
IHU4IGVuYWJsZSkKPj4+Pj4gICAgewo+Pj4+PiAgICAgICAgaW50IGk7Cj4+Pj4+IEBAIC0zMDcs
NiArMzA5LDcgQEAgc3RhdGljIHZvaWQgY3NpZF9jb25maWd1cmVfc3RyZWFtKHN0cnVjdAo+Pj4+
PiBjc2lkX2RldmljZSAqY3NpZCwgdTggZW5hYmxlKQo+Pj4+PiAgICAgICAgICAgIGlmIChjc2lk
LT5waHkuZW5fdmMgJiBCSVQoaSkpIHsKPj4+Pj4gICAgICAgICAgICAgICAgX19jc2lkX2NvbmZp
Z3VyZV9yZGlfc3RyZWFtKGNzaWQsIGVuYWJsZSwgaSwgMCk7Cj4+Pj4+ICAgICAgICAgICAgICAg
IF9fY3NpZF9jb25maWd1cmVfcngoY3NpZCwgJmNzaWQtPnBoeSwgMCk7Cj4+Pj4+ICsgICAgICAg
ICAgICBjc2lkX3N1YmRldl9yZWdfdXBkYXRlKGNzaWQsIGksIGZhbHNlKTsKPj4+Pj4gICAgICAg
ICAgICAgICAgX19jc2lkX2N0cmxfcmRpKGNzaWQsIGVuYWJsZSwgaSk7Cj4+Pj4+ICAgICAgICAg
ICAgfQo+Pj4+PiAgICAgICAgfQo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtZ2VuMy5jIGIvCj4+Pj4+IGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLWdlbjMuYwo+Pj4+PiBpbmRleCAwZmRiZjc1
ZmIyN2QuLjgzMGM5YzgxOGQzZCAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQtZ2VuMy5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLWdlbjMuYwo+Pj4+PiBAQCAtMjE5LDYg
KzIxOSw4IEBAIHN0YXRpYyB2b2lkIF9fY3NpZF9jb25maWd1cmVfcmRpX3N0cmVhbShzdHJ1Y3QK
Pj4+Pj4gY3NpZF9kZXZpY2UgKmNzaWQsIHU4IGVuYWJsZSwgdTgKPj4+Pj4gICAgICAgIHdyaXRl
bCh2YWwsIGNzaWQtPmJhc2UgKyBDU0lEX1JESV9DRkcwKHBvcnQpKTsKPj4+Pj4gICAgfQo+Pj4+
PiArc3RhdGljIHZvaWQgY3NpZF9zdWJkZXZfcmVnX3VwZGF0ZShzdHJ1Y3QgY3NpZF9kZXZpY2Ug
KmNzaWQsIGludAo+Pj4+PiBwb3J0X2lkLCBib29sIGlzX2NsZWFyKTsKPj4+Pj4gKwo+Pj4+PiAg
ICBzdGF0aWMgdm9pZCBjc2lkX2NvbmZpZ3VyZV9zdHJlYW0oc3RydWN0IGNzaWRfZGV2aWNlICpj
c2lkLCB1OCBlbmFibGUpCj4+Pj4+ICAgIHsKPj4+Pj4gICAgICAgIHU4IGk7Cj4+Pj4+IEBAIC0y
MzAsNiArMjMyLDcgQEAgc3RhdGljIHZvaWQgY3NpZF9jb25maWd1cmVfc3RyZWFtKHN0cnVjdAo+
Pj4+PiBjc2lkX2RldmljZSAqY3NpZCwgdTggZW5hYmxlKQo+Pj4+PiAgICAgICAgICAgIGlmIChj
c2lkLT5waHkuZW5fdmMgJiBCSVQoaSkpIHsKPj4+Pj4gICAgICAgICAgICAgICAgX19jc2lkX2Nv
bmZpZ3VyZV9yZGlfc3RyZWFtKGNzaWQsIGVuYWJsZSwgaSwgMCk7Cj4+Pj4+ICAgICAgICAgICAg
ICAgIF9fY3NpZF9jb25maWd1cmVfcngoY3NpZCwgJmNzaWQtPnBoeSwgMCk7Cj4+Pj4+ICsgICAg
ICAgICAgICBjc2lkX3N1YmRldl9yZWdfdXBkYXRlKGNzaWQsIGksIGZhbHNlKTsKPj4+Pj4gICAg
ICAgICAgICAgICAgX19jc2lkX2N0cmxfcmRpKGNzaWQsIGVuYWJsZSwgaSk7Cj4+Pj4+ICAgICAg
ICAgICAgfQo+Pj4+PiAgICB9Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdmZlLmMgYi9kcml2ZXJzLwo+Pj4+PiBtZWRpYS9wbGF0Zm9y
bS9xY29tL2NhbXNzL2NhbXNzLXZmZS5jCj4+Pj4+IGluZGV4IDI2ODBhOTkxNDc2NS4uMTZhMGI1
NjYzZmUyIDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ft
c3MvY2Ftc3MtdmZlLmMKPj4+Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2Nh
bXNzL2NhbXNzLXZmZS5jCj4+Pj4+IEBAIC01MDIsNiArNTAyLDM3IEBAIHZvaWQgdmZlX2J1Zl9k
b25lKHN0cnVjdCB2ZmVfZGV2aWNlICp2ZmUsIGludCB3bSkKPj4+Pj4gICAgICAgIHNwaW5fdW5s
b2NrX2lycXJlc3RvcmUoJnZmZS0+b3V0cHV0X2xvY2ssIGZsYWdzKTsKPj4+Pj4gICAgfQo+Pj4+
PiArLyoKPj4+Pj4gKyAqIHZmZV91cHN0cmVhbV9jc2lkX2hhc19yZWdfdXBkYXRlIC0gQ2hlY2sg
d2hldGhlciB0aGUgQ1NJRCBmZWVkaW5nCj4+Pj4+IHRoaXMgbGluZQo+Pj4+PiArICogaXNzdWVz
IGl0cyBvd24gc3RyZWFtb24gUlVQIChpLmUuIGl0cyBjb25maWd1cmVfc3RyZWFtIGRvZXMgdGhl
Cj4+Pj4+IFJVUCkuCj4+Pj4+ICsgKgo+Pj4+PiArICogVGhlIENTSUQtPlZGRSBsaW5rIGlzIGNy
ZWF0ZWQgaW4gY2Ftc3MuYyBmb3IgYWxsIENTSURzIGFuZCBWRkVzLAo+Pj4+PiBzbyB0aGUKPj4+
Pj4gKyAqIHVwc3RyZWFtIGVudGl0eSBvZiB0aGUgc2luayBwYWQgaXMgZWl0aGVyIGEgQ1NJRCAo
cG9zc2libHkgd2l0aAo+Pj4+PiBSVVApIG9yIGFuCj4+Pj4+ICsgKiBJU1BJRiAobm8gUlVQKS4g
T25seSBlbmFibGVkIGxpbmtzIGFyZSBjb25zaWRlcmVkLgo+Pj4+PiArICovCj4+Pj4+ICtzdGF0
aWMgYm9vbCB2ZmVfdXBzdHJlYW1fY3NpZF9oYXNfcmVnX3VwZGF0ZShzdHJ1Y3QgdmZlX2xpbmUg
KmxpbmUpCj4+Pj4+ICt7Cj4+Pj4+ICsgICAgc3RydWN0IHZmZV9kZXZpY2UgKnZmZSA9IHRvX3Zm
ZShsaW5lKTsKPj4+Pj4gKyAgICBzdHJ1Y3QgY2Ftc3MgKmNhbXNzID0gdmZlLT5jYW1zczsKPj4+
Pj4gKyAgICBzdHJ1Y3QgbWVkaWFfcGFkICpyZW1vdGU7Cj4+Pj4+ICsgICAgdW5zaWduZWQgaW50
IGk7Cj4+Pj4+ICsKPj4+Pj4gKyAgICByZW1vdGUgPSBtZWRpYV9wYWRfcmVtb3RlX3BhZF9maXJz
dCgmbGluZS0+cGFkc1tNU01fVkZFX1BBRF9TSU5LXSk7Cj4+Pj4+ICsgICAgaWYgKCFyZW1vdGUg
fHwgIWlzX21lZGlhX2VudGl0eV92NGwyX3N1YmRldihyZW1vdGUtPmVudGl0eSkpCj4+Pj4+ICsg
ICAgICAgIHJldHVybiBmYWxzZTsKPj4+Pj4gKwo+Pj4+PiArICAgIGZvciAoaSA9IDA7IGkgPCBj
YW1zcy0+cmVzLT5jc2lkX251bTsgaSsrKSB7Cj4+Pj4+ICsgICAgICAgIHN0cnVjdCBjc2lkX2Rl
dmljZSAqY3NpZCA9ICZjYW1zcy0+Y3NpZFtpXTsKPj4+Pj4gKwo+Pj4+PiArICAgICAgICBpZiAo
JmNzaWQtPnN1YmRldi5lbnRpdHkgIT0gcmVtb3RlLT5lbnRpdHkpCj4+Pj4+ICsgICAgICAgICAg
ICBjb250aW51ZTsKPj4+Pj4gKwo+Pj4+PiArICAgICAgICByZXR1cm4gISFjc2lkLT5yZXMtPmh3
X29wcy0+cmVnX3VwZGF0ZTsKPj4+Pj4gKyAgICB9Cj4+Pj4+ICsKPj4+Pj4gKyAgICByZXR1cm4g
ZmFsc2U7Cj4+Pj4+ICt9Cj4+Pj4+ICsKPj4+Pj4gICAgaW50IHZmZV9lbmFibGVfb3V0cHV0X3Yy
KHN0cnVjdCB2ZmVfbGluZSAqbGluZSkKPj4+Pj4gICAgewo+Pj4+PiAgICAgICAgc3RydWN0IHZm
ZV9kZXZpY2UgKnZmZSA9IHRvX3ZmZShsaW5lKTsKPj4+Pj4gQEAgLTUxMSw2ICs1NDIsNyBAQCBp
bnQgdmZlX2VuYWJsZV9vdXRwdXRfdjIoc3RydWN0IHZmZV9saW5lICpsaW5lKQo+Pj4+PiAgICAg
ICAgdW5zaWduZWQgbG9uZyBmbGFnczsKPj4+Pj4gICAgICAgIHVuc2lnbmVkIGludCBmcmFtZV9z
a2lwID0gMDsKPj4+Pj4gICAgICAgIHVuc2lnbmVkIGludCBpOwo+Pj4+PiArICAgIGJvb2wgcnVw
X2luX2NzaWQ7Cj4+Pj4+ICAgICAgICBzZW5zb3JfcGFkID0gY2Ftc3NfZmluZF9zZW5zb3JfcGFk
KCZsaW5lLT5zdWJkZXYuZW50aXR5KTsKPj4+Pj4gICAgICAgIGlmIChzZW5zb3JfcGFkKSB7Cj4+
Pj4+IEBAIC01MjMsNiArNTU1LDggQEAgaW50IHZmZV9lbmFibGVfb3V0cHV0X3YyKHN0cnVjdCB2
ZmVfbGluZSAqbGluZSkKPj4+Pj4gICAgICAgICAgICAgICAgZnJhbWVfc2tpcCA9IFZGRV9GUkFN
RV9EUk9QX1ZBTCAtIDE7Cj4+Pj4+ICAgICAgICB9Cj4+Pj4+ICsgICAgcnVwX2luX2NzaWQgPSB2
ZmVfdXBzdHJlYW1fY3NpZF9oYXNfcmVnX3VwZGF0ZShsaW5lKTsKPj4+Pj4gKwo+Pj4+PiAgICAg
ICAgc3Bpbl9sb2NrX2lycXNhdmUoJnZmZS0+b3V0cHV0X2xvY2ssIGZsYWdzKTsKPj4+Pj4gICAg
ICAgIG9wcy0+cmVnX3VwZGF0ZV9jbGVhcih2ZmUsIGxpbmUtPmlkKTsKPj4+Pj4gQEAgLTU1Miw3
ICs1ODYsOCBAQCBpbnQgdmZlX2VuYWJsZV9vdXRwdXRfdjIoc3RydWN0IHZmZV9saW5lICpsaW5l
KQo+Pj4+PiAgICAgICAgICAgIG91dHB1dC0+Z2VuMi5hY3RpdmVfbnVtKys7Cj4+Pj4+ICAgICAg
ICAgICAgb3BzLT52ZmVfd21fdXBkYXRlKHZmZSwgb3V0cHV0LT53bV9pZHhbMF0sCj4+Pj4+ICAg
ICAgICAgICAgICAgICAgICAgICBvdXRwdXQtPmJ1ZltpXS0+YWRkclswXSwgbGluZSk7Cj4+Pj4+
IC0gICAgICAgIG9wcy0+cmVnX3VwZGF0ZSh2ZmUsIGxpbmUtPmlkKTsKPj4+Pj4gKyAgICAgICAg
aWYgKCFydXBfaW5fY3NpZCkKPj4+Pj4gKyAgICAgICAgICAgIG9wcy0+cmVnX3VwZGF0ZSh2ZmUs
IGxpbmUtPmlkKTsKPj4+Pj4gICAgICAgIH0KPj4+Pj4gICAgICAgIHNwaW5fdW5sb2NrX2lycXJl
c3RvcmUoJnZmZS0+b3V0cHV0X2xvY2ssIGZsYWdzKTsKPj4+Pj4KPj4+Pgo+Pj4+IEFjY29yZGlu
ZyB0byB0aGUgaGFyZHdhcmUgZG9jdW1lbnRhdGlvbjoKPj4+PiBTdGFydGluZyB3aXRoIENTSUQg
NjgwLCBDQU1JRiBoYXMgbW92ZWQgaW50byB0aGUgQ1NJRC4gQXMgYSByZXN1bHQsCj4+Pj4gUlVQ
IGlzIG5vdyBpc3N1ZWQgYnkgdGhlIENTSUQgYW5kIHByb3BhZ2F0ZWQgdG8gdGhlIElGRS4KPj4+
Pgo+Pj4+IFN0YXJ0aW5nIHdpdGggQ1NJRCA5ODAsIHNvZnR3YXJlIG11c3QgYWxzbyBzZXQgdGhl
IFNFVCBiaXQgaW4KPj4+PiBSVVBfQVVQX0NNRCBhZnRlciBpc3N1aW5nIHRoZSBSVVAvQVVQIGNv
bW1hbmQuIE90aGVyd2lzZSwgdGhlIGhhcmR3YXJlCj4+Pj4gaWdub3JlcyB0aGUgY29tbWFuZCBh
bmQgdGhlIGNvcnJlc3BvbmRpbmcgcmVnaXN0ZXIgdXBkYXRlIGRvZXMgbm90Cj4+Pj4gdGFrZSBl
ZmZlY3QuCj4+Pj4KPj4+Pgo+Pj4+IEJyeWFuLCBhY2NvcmRpbmcgdG8gdGhlIEhXIGRvY3VtZW50
YXRpb24sIHRoZSBjaGFuZ2UgaXRzZWxmIGlzCj4+Pj4gY29uc2lzdGVudCB3aXRoIHRoZSByZXF1
aXJlZCBwcm9ncmFtbWluZyBzZXF1ZW5jZS4gVGhlIG1haW4gcXVlc3Rpb24KPj4+PiBpcyB3aGV0
aGVyIHRoaXMgaXMgdGhlIHJpZ2h0IGltcGxlbWVudGF0aW9uIGZyb20gdGhlIGRyaXZlcgo+Pj4+
IHBlcnNwZWN0aXZlLCBvciBpZiB0aGVyZSBpcyBhIGNsZWFuZXIgd2F5IHRvIGhhbmRsZSBpdC4K
Pj4+Pgo+Pj4+IEkgaGF2ZSB0ZXN0ZWQgdGhlIGNoYW5nZSBvbiB0aGUgSGFtb2EgRVZLIGJvYXJk
Lgo+Pj4+IFRlc3RlZC1ieTogV2VubWVuZyBMaXUgPHdlbm1lbmcubGl1QG9zcy5xdWFsY29tbS5j
b20+ICMgSGFtb2EgRVZLCj4+Pj4KPj4+Pgo+Pj4+IFRoYW5rcywKPj4+PiBXZW5tZW5nCj4+Pgo+
Pj4gT0sgdGhhbmsgeW91IGZvciB0aGUgZXhwbGFuYXRpb24uCj4+Pgo+Pj4gT1RPSCBJIGFncmVl
IHdpdGggTG9pYydzIHN0YXRlbWVudCAtIGl0IGlzIGNsZWFuZXIgdG8gc3VidHJhY3QgdGhlCj4+
PiBjYWxsYmFjayBhbmQgZGlzanVuY3Qgb24gaXRzIHByZXNlbmNlIHRoYW4gdG8gYWRkIGEgZmxh
ZyB0byB0aGUgc2FtZQo+Pj4gZWZmZWN0IGluIHJldmVyc2UuCj4+Pgo+Pj4gLS0tCj4+PiBib2QK
Pj4KPj4gSGkgTG9pYywgQnJ5YW4sIHRoYW5rcyBmb3IgdGhlIHJldmlldy4gSSB3b25kZXIgaWYg
aXQgd291bGQgYmUgYmV0dGVyIHRvCj4+IGtlZXAgdGhlIGNoZWNrIG9uIHRoZSBDU0lEIHNpZGU/
Cj4+Cj4+IHZmZS0+cmVnX3VwZGF0ZSgpIGlzIGFsc28gdXNlZCBvdXRzaWRlIHN0cmVhbS1vbiwg
c3VjaCBhcyBidWZkb25lLCBxdWV1ZQo+PiBidWZmZXIuIEl0IG11c3QgYmUgaW1wbGVtZW50ZWQg
aW4gVkZFLiBXZSBvbmx5IHdhbnQgdG8gY2hhbmdlIHRoZSBWRkUKPj4gYmVoYXZpb3IgYXQgc3Ry
ZWFtLW9uIHN0YWdlLCBpbiBmdW5jdGlvbiB2ZmVfZW5hYmxlX291dHB1dF92MigpLiBTbwo+PiBt
YWtpbmcgdmZlLT5yZWdfdXBkYXRlKCkgb3B0aW9uYWwgY291bGQgYWZmZWN0IHJ1bnRpbWUgdXBk
YXRlcy4KPiAKPiBCdXQgdGhlIHBhdGNoIHNheXM6Cj4gJ1RoZSBSRUdfVVBEQVRFIGlzIGlzc3Vl
ZCB0aHJvdWdoIHRoZSBDU0lEIHJhdGhlciB0aGFuIHRoZSBWRkUnCj4gCj4gU28geW91IG1lYW4g
aXQncyBub3QgYWx3YXlzIGRyaXZlbiBieSBDU0lEPwo+IAo+IEFsc28sIHRvZGF5IHdlIHBlcmZv
cm0gYSByZWdfdXBkYXRlIGFmdGVyIHF1ZXVpbmcgYSBidWZmZXIgKGkuZS4gYWZ0ZXIKPiBwcm9n
cmFtbWluZyBBRERSKS4gSG93ZXZlciwgYXMgZmFyIGFzIEkga25vdywgdGhpcyBpcyBubyBsb25n
ZXIKPiBuZWNlc3NhcnkgaW4gcmVjZW50IFZGRS9URkUvSUZFIGdlbmVyYXRpb25zLiBJbiB0aG9z
ZSBpbXBsZW1lbnRhdGlvbnMsCj4gdGhlIEFERFIgcmVnaXN0ZXIgaXMgbm90IGRvdWJsZS1idWZm
ZXJlZCBhbmQgaXMgbm90IHBhcnQgb2YgdGhlCj4gcmVnLXVwZGF0ZSBzZXQuIEluc3RlYWQsIGl0
IGJlaGF2ZXMgYXMgYSBGSUZPIGVudHJ5LCBzbyBpc3N1aW5nIGEKPiByZWdfdXBkYXRlIG9ubHkg
cmVzdWx0cyBpbiBhIHVzZWxlc3MgUlVQX0RPTkUgaW50ZXJydXB0Lgo+IAo+Pgo+PiBNYXliZSB0
aGUgY2hlYXBlc3Qgd2F5IGlzIHN0aWxsIHRvIGNoZWNrIHRoZSBDU0lEIHNpZGUgcmVnX3VwZGF0
ZQo+PiBpbXBsZW1lbnRhdGlvbiBhdCBzdHJlYW0tb24gc3RhZ2U/IEknbSB2ZXJ5IGdsYWQgdG8g
aGVhciB5b3VyCj4+IHN1Z2dlc3Rpb25zLiBUaGFua3MgYSBsb3QuCj4+Cj4+IC0tLQo+PiBCZXN0
IFJlZ2FyZHMsCj4+IEhhbmd4aWFuZwoKWWVzLiBCZWZvcmUgdGhlIDY4MCBwbGF0Zm9ybSwgVkZF
IGlzc3VlZCB0aGUgUkVHX1VQREFURSBpdHNlbGYuIFN0YXJ0aW5nIAp3aXRoIDY4MCwgaG93ZXZl
ciwgdGhlIFJFR19VUERBVEUgc2lnbmFsIGlzIGNvbnRyb2xsZWQgYnkgQ1NJRCByYXRoZXIgCnRo
YW4gVkZFLiBUaGUgQ1NJRCBzdHJlYW0tb24gUlVQIGlzIGlzc3VlZCBmcm9tIHRoZSBDU0lEIHN0
YXJ0IHBhdGggCmFmdGVyIFZGRSBoYXMgYmVlbiBzdGFydGVkLgoKV2VubWVuZyBwcmV2aW91c2x5
IGRlc2NyaWJlZCB0aGUgaGFyZHdhcmUgZXZvbHV0aW9uIGFuZCB0aGUgZG9jdW1lbnRlZCAKaW5p
dGlhbGl6YXRpb24gc2VxdWVuY2UgaW4gdGhpcyB0aHJlYWQuIEkgaG9wZSB0aGlzIGhlbHBzIGNs
YXJpZnkgdGhlIApiYWNrZ3JvdW5kLgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzM4NDMx
MTBjLTQ3NjYtNDM1Mi1hYjJhLTZkMzAxNzMzNjUzNEBvc3MucXVhbGNvbW0uY29tLwoKR29pbmcg
YmFjayB0byB0aGUgc3BsaXQgQVVQL1JVUCBkZXNpZ24sIHRoaXMgd2FzIGludHJvZHVjZWQgaW4g
dGhlIApQYWthbGEgKDk4MCkgZ2VuZXJhdGlvbi4gVGhlIHNwbGl0IEFVUC9SVVAgZGVzaWduIGFs
bG93cyB1cyB0byBzZWxlY3QgCkFERFIgb3IgUkVHIHVwZGF0ZXMgaW5kZXBlbmRlbnRseS4gSG93
ZXZlciwgc2luY2UgdGhlIDY4MCBnZW5lcmF0aW9uLCAKUkVHX1VQREFURSBoYXMgYmVlbiBtb3Zl
ZCB0byB0aGUgQ1NJRCBzaWRlLCB3aGljaCBkb2VzIG5vdCBoYXZlIHRoZSBzYW1lIApzcGxpdCBj
YXBhYmlsaXR5LgoKSSBhZ3JlZSB0aGF0IGNvbWJpbmluZyBBVVAgYW5kIFJVUCB3b3VsZCBnZW5l
cmF0ZSBhbiB1bm5lY2Vzc2FyeSAKUlVQX0RPTkUgaW50ZXJydXB0LiBIb3dldmVyLCBwbGVhc2Ug
dGFrZSBhIGxvb2sgYXQgdGhlIGltcGxlbWVudGF0aW9uIG9mIApjc2lkX3N1YmRldl9yZWdfdXBk
YXRlbSgpIGluIGNhbXNzLWNzaWQtMTA4MC5jLiBJbiB0aGlzIHNlcmllcywgd2UgaGF2ZSAKYWxy
ZWFkeSBmb2xsb3dlZCB0aGUgYXBwcm9hY2ggeW91IHN1Z2dlc3RlZCBhYm92ZTogZHVyaW5nIHJ1
bnRpbWUsIHdlIApjb25maWd1cmUgYW5kIHRyaWdnZXIgb25seSBBVVAsIHdpdGhvdXQgUlVQLiBU
aGVyZWZvcmUsIG5vIHVubmVjZXNzYXJ5IApSVVBfRE9ORSBpbnRlcnJ1cHQgd2lsbCBiZSBnZW5l
cmF0ZWQuCgpJJ20gdmVyeSBvcGVuIHRvIGZ1cnRoZXIgZGlzY3Vzc2lvbiBhbmQgc2luY2VyZWx5
IGFwcHJlY2lhdGUgeW91ciAKZmVlZGJhY2suIElmIHRoZXJlIGlzIGFueXRoaW5nIEkgaGF2ZSBt
aXN1bmRlcnN0b29kLCBvciBpZiB5b3UgaGF2ZSBhIApiZXR0ZXIgYXBwcm9hY2ggaW4gbWluZCwg
cGxlYXNlIGZlZWwgZnJlZSB0byBwb2ludCBpdCBvdXQuIEknZCBiZSBtb3JlIAp0aGFuIGhhcHB5
IHRvIGNsYXJpZnkgYW55IHF1ZXN0aW9ucyBhbmQgbGVhcm4gZnJvbSB5b3VyIHN1Z2dlc3Rpb25z
LgoKLS0tCkJlc3QgUmVnYXJkcywKSGFuZ3hpYW5nCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
