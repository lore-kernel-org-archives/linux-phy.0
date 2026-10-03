Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A442CA5FC1
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 05:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ST80TLcqE37h/hO/1F7+80cL2zvmidoI19n3WZV8JM=; b=y6DysJ1datb4jK
	s1JP6NyobOcLDUftdrNjdXo9vk5QW6THy6Zzqptw8lV8YFR0SquFZ9hZOFxEi73jX0RGNZCo1AeoO
	8sOpDUk5g4esZ9mGceIpGEEfhKihThQPad3YdmXoQLLcH2gPFRE9fACy1h+Q+1A7bcjXya62r4zUv
	o9A7f1gBHVy541l2v9gDyz8O4V3K8tiHc5FoiM0dFa6q9Wx983zajsEpk5KxndBs+DqAad24CM/Wp
	m2CCOUx1SJih0fZ4CDdMkk4LYRF2kpfQq3yBfYs/Iuaf7HRMLV2yVx6xqKa3+fbIpofll91FZxB6t
	NJDGnt5+MG9bo24ZmuHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCsMp-0000000D46t-3TWP;
	Sat, 03 Oct 2026 05:33:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCsMm-0000000D46R-0Gs6
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 05:33:01 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6933Z5693417198
	for <linux-phy@lists.infradead.org>; Sat, 3 Oct 2026 05:32:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WBfJlNyloqVAJ23jqA1Jjpi5P6Sh0h3sH7H/cf0PtU0=; b=FptrvLkjMDFtu7nG
	83MqdEm0DUeUMT2TwQ/jl9k1k/+CEw8Vku2tf7cRg4xpP0KARt2puUKOAfTBxjLD
	kmwNo9vDpR05R3U3vJjrQ7AGSH8upUKGLyTpqP8/WNi9oEAQJkdth6I+XRJZt22O
	zI7hFW5SRc8VW6Wche0FSkcfB6CXZkjoYxiJefo2HxZEK/0IGlFMW1aiNguwpNA3
	7dr3VI9ltm4qLG1L41PyBlOzUZ40F+LQpWaDS2yPwIL6S0G4k+r4f3SshDu+DzZz
	DjwNAElNdBEDPrMTQuNBqrSQKUcJ73JXqfO25DUPKm0IRP38k7hEv32IDspHEjpX
	6QDXsw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2sx305jr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 05:32:59 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-98929c3b03bso192039241.2
        for <linux-phy@lists.infradead.org>; Fri, 02 Oct 2026 22:32:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791005578; cv=none;
        d=google.com; s=arc-20260327;
        b=cVHhTR7TlU2YDhpPoYOXTMy4jZuZBxtSNs4nPg99kCIXQF3eLbrfUg7h911++fA7ZK
         W4u/SvfFcE+c3hRriOHD8U0PmjTaWen5aK1CbFL7RZ3RLKZgPDxtlzghSIw78KD5P8sw
         Kvi8klOkpmZzL1hc/MPVxXCE50bM/gyPt327sbXOKgsU+URqHTY8+86HiK8O8IxaIjih
         rWWJHocRk0VCd30scRPrMDKoG7RhgSUl7mQYWh/uoUK/Z7CvwU7weEhANzSQUEGKDtob
         HZD4RWjT+lY7ZCjBzD24B6P46j+OzHSJrMfXxYSW4Iwd6N7P/yDNxb8eAtyGk94WWuBL
         NkEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=WBfJlNyloqVAJ23jqA1Jjpi5P6Sh0h3sH7H/cf0PtU0=;
        fh=bU+3Ul9/nwovbQXsuSvKnvqpiUO2VJY6lx69dYV9Cd4=;
        b=XT6l3GgXXNPYJn44YmjIpVae1LXoFtGNeuWXFvTEHEORCIZXNlJ3lxXc2IdfyijBzK
         bI5EzyeJKTaxWPM6wW7A7GnUww6QPPmrlgho0wCNHVS1J2+1nAjHjaMcY1Tzzr02p7LY
         hytetRlEuo0/wgi/au+YkuG3WRUOYiCuU0ib06x1DXaQAnao0nFQRSHta7990Xi0SKp7
         gIB0oRbNGet2c07h0DTMJel3np8Fli+kH1dKWJ57Ncl1cJLOhjcXVsLVU2Zhx9N9i11a
         CHkIlNcCNE5sZx24vcXXQ+mUWZq/HJ7WaH5XweGXOIaSXDeAjX2RwwNyytb2fRDNHI/4
         +tlw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791005578; x=1791610378; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=WBfJlNyloqVAJ23jqA1Jjpi5P6Sh0h3sH7H/cf0PtU0=;
        b=JHb6wW7mkYic8kO7cBrZnERK0imB1oALMioWFrB5QD22mXHYMu26PlW1gs2kC2TAX6
         8tO4wy6DF2t/0MTUoRLhRv8KIFeee7gOZPNHO0NvbuGb0PweMbctqixQHUOYQgzhDHm6
         aTeNYIZPSiqxGIcLaMJOow0IpuSCfY7FxVR3fDkG9meeuTX36+P7lPWTWY2kcaWn02Sc
         BwBB/PZyFxC/wl/mBvcIQI3EeuL9H0dzlG6FNkLaS6euhw5q/alXCgRYWQ2a7c4J1MVn
         hMUer5NfgHPLmBpoaWFecduc6xtnFYda+qu3Ly+MRVhHxuNRGBhDm9rcrGE5a2mOJRhZ
         IdQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791005578; x=1791610378;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WBfJlNyloqVAJ23jqA1Jjpi5P6Sh0h3sH7H/cf0PtU0=;
        b=GurFkHNQA2wT4EGUxL8T59KKvUwWGHOICshJzEi/SrOEneeluE1yOEQO7PShXYITXb
         fLy+6Ra3g6yNQdZPMTWdF25TFzPKXSUToUJR3pxp9tXTTt5R8vxbvgW8T1lwF19SewUG
         jbOBvyTHM4As1CvgRnvyXE5B4yXwoLO7bPuCmDFLq2QTCyFtCEvDdXoRk9Fyr+PpGmBt
         TsduFOveXRqptxI9pS9O4xIjysBzPteDZ6h7m2nqRvLS5ZNZNpmls4yBoDtHjWQxWaA1
         QOBYpzd2HV3gTzNT+269t4gyDmHG3LFrm+nBp2sIKZTYYzLbg4TbtTJNA9vExBr6jEl7
         LeIA==
X-Forwarded-Encrypted: i=1; AKwUvBwilAewLtoKmE4BdQ/ZIopbi85aNt5kElN/y0BBO3+Ci7oahbmoip2bDurylHuSy+LoWhrjYDQQ/kw=@lists.infradead.org
X-Gm-Message-State: AFq9FYIa1Fnl05VjOi0cD8RP5pNAn6ubHnK5dmcJroDgoRmkYeDpI1H1
	V8AO5D8sBAU+BuWvgHyIX1Z+teghXtZ+7ld+dkIxmMsnox46/Bva+HpsccGzDLivjNOKkMjLo/W
	ao8P2sj9gFTBxUrRJZeNQlaTJEYD1LctDXG/Es7aoPqTMDyMPnyIjxai7TBLAmgP3t2OB/ND1rU
	EXcRETyeNnvBXtAfyXWU0wP3GycFskZgMTrikfDnxHjPU=
X-Gm-Gg: AYBFou0ibBST8ruxoJLUkGufobqOTBod6VDE9LyFw8o122H/wrcXidEWDVvgIqCVun2
	+18S6RZIlZxzaFsHijQX9Xpp2a/CJcvR05wWLK7rzH8BeA70TKbkOm4/kT8gOvovDNoXRpXjhuc
	NQybMpFY1JnyGIEHV6IGWektNHRa3hzYkO5j31n9kT1n+uxHKt9skxuTNuOSUTnbstoRoibn4UC
	ddBF4MuRAkj1vtHcg==
X-Received: by 2002:a05:6102:5494:b0:7b2:f3ff:6b34 with SMTP id ada2fe7eead31-7c2427e43cdmr428022137.1.1791005578002;
        Fri, 02 Oct 2026 22:32:58 -0700 (PDT)
X-Received: by 2002:a05:6102:5494:b0:7b2:f3ff:6b34 with SMTP id
 ada2fe7eead31-7c2427e43cdmr428021137.1.1791005577532; Fri, 02 Oct 2026
 22:32:57 -0700 (PDT)
MIME-Version: 1.0
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-6-dcf3fd37f76c@oss.qualcomm.com> <20260929061724.7E52C1F00893@smtp.kernel.org>
In-Reply-To: <20260929061724.7E52C1F00893@smtp.kernel.org>
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 3 Oct 2026 13:32:46 +0800
X-Gm-Features: AclHuK9aBleyJ22M62RSQUnz4PnDmFE-WZpjV34zP8HiyBjyBg5R_gBameCGqVk
Message-ID: <CACbMrhpeuzE+RgXwjfuBz24WE2Q7yCsxMWBjthy4RCtH0snkgQ@mail.gmail.com>
Subject: Re: [PATCH v17 06/11] media: qcom: camss: csid: Add support for CSID Gen4
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, media-ci@linuxtv.org, robh@kernel.org,
        olteanv@gmail.com, conor+dt@kernel.org
X-Authority-Analysis: v=2.4 cv=JY0pPkKV c=1 sm=1 tr=0 ts=6ac0938b cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=c92rfblmAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=CaMBOwoDLpX39Z_i5uIA:9 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
 a=GvGzcOZaWPEFPQC_NcjD:22
X-Proofpoint-ORIG-GUID: hvMHyRP9eNde3Lm0CUhmgmX9fJcirYdI
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAzMDAyMSBTYWx0ZWRfX25bZCA/F/oY0
 6aWV8g8V59yReXZb+YIq115oA0oMNVHoIekYOPuEmhcb6RLsiuQw6TN2Hzhmt7ULgaPdSAJ5Ryj
 0IW+5/LeV0k00/CujDV7KXj16dRByns=
X-Proofpoint-GUID: hvMHyRP9eNde3Lm0CUhmgmX9fJcirYdI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAzMDAyMSBTYWx0ZWRfX1srHXwRX7my2
 GNWcKFjl+asa1h1RT1E7U1I0JtVmE+IlU86MfzMpE0uKg8qNGTzqOBWhl2wh8bxNa166dKHrxu5
 l64BXF+jwOSm05MKOvvyMJNOqhKUPk/59XNfr2uRmdgjUaD0sJUZcGn6Cm/NpisLn8KzzancT/Y
 WZXpMnHWYaOHeUrqBNXZBGB2VqID4Oh5K/5uj4iGJP14JPhRdVcCE+/56iCPlukYHuKcqKhmqlD
 u/qvfM67iUpVONz2KjMuCn4heRZPjQVHCrUKn/ZHa0a/VXgzp8aSMC0mw37HeHUuYHgxOY8kwFg
 lvyoCIV54y68jszDvr8uMRgOLB/FNlNLlFFayYyu3Hu4FNCy8NwiM/b0KSmY7UkgQnqg9iaa2of
 rCjp803BiQFJAAP1b2S6AEAMi8MIT2JiSeIkhRyLCFUbUKxTbD9KGynGsh+eMLnFE7QlPM3jI5B
 9XMS3aAYf0kNtVx6dSw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-02_07,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610030021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_223300_124429_B0FF9B2E 
X-CRM114-Status: GOOD (  29.39  )
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

T24gOS8yOS8yMDI2IDI6MTcgUE0sIHNhc2hpa28tYm90QGtlcm5lbC5vcmcgd3JvdGU6Cj4gVGhh
bmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQgMiBw
b3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Cj4gLSBbSGlnaF0gbWVkaWE6IHFjb20vY2Ft
c3M6IGRhdGEgcmFjZSBvbiBjc2lkLT5hdXBfdXBkYXRlIGFuZCBydXBfdXBkYXRlCj4gLSBbTWVk
aXVtXSBtZWRpYTogcWNvbS9jYW1zczogaW50ZWdlciB1bmRlcmZsb3cgaW4gX19jc2lkX2NvbmZp
Z3VyZV9yeAo+IC0tCj4KPiBjb21taXQgNjExYWJkZWI0YjVkYTU3NGFlMjkyZDFmZjczNmQwZDcx
ZjJmNGVkMgo+IEF1dGhvcjogSGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3NzLnF1YWxjb21t
LmNvbT4KPgo+IG1lZGlhOiBxY29tOiBjYW1zczogY3NpZDogQWRkIHN1cHBvcnQgZm9yIENTSUQg
R2VuNAo+Cj4gQWRkIHN1cHBvcnQgZm9yIHRoZSBDU0lEIEdlbjQgaGFyZHdhcmUgZm91bmQgb24g
S2FhbmFwYWxpIFNvQy4KPgo+IEludHJvZHVjZSBHZW40IHJlc291cmNlIGRlc2NyaXB0aW9ucyBh
bmQgaW1wbGVtZW50IHRoZSBoYXJkd2FyZS1zcGVjaWZpYwo+IHJlZ2lzdGVyIHByb2dyYW1taW5n
LCByZXNldCBzZXF1ZW5jZSwgYW5kIEJVRl9ET05FIGludGVycnVwdCBoYW5kbGluZy4KPgo+IEdl
bjQgc3BsaXRzIFJVUCBhbmQgQVVQIHVwZGF0ZXMgaW50byBzZXBhcmF0ZSByZWdpc3RlcnMgYW5k
IHVzZXMgYSBTRVQKPiByZWdpc3RlciB0byBjb21taXQgdGhlIHVwZGF0ZXMuIFVwZGF0ZSB0aGUg
Q1NJRCBpbnRlcmZhY2UgdG8gc3VwcG9ydAo+IGJvdGggdGhpcyBzY2hlbWUgYW5kIHRoZSBsZWdh
Y3kgY29tYmluZWQgcmVnX3VwZGF0ZSBtZWNoYW5pc20uCj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLWdlbjQuYyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLWdlbjQuYwo+PiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAwLi40ZmYyZjQxZjcwZjdlCj4+IC0tLSAv
ZGV2L251bGwKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNz
LWNzaWQtZ2VuNC5jCj4gWyAuLi4gXQo+PiArc3RhdGljIHZvaWQgX19jc2lkX2F1cF9ydXBfY2xl
YXIoc3RydWN0IGNzaWRfZGV2aWNlICpjc2lkLCBpbnQgcG9ydF9pZCkKPj4gK3sKPj4gKyAvKiBI
YXJkd2FyZSBjbGVhcnMgdGhlIHJlZ2lzdGVycyB1cG9uIGNvbnN1bWluZyB0aGUgc2V0dGluZ3Mg
Ki8KPj4gKyBjc2lkLT5hdXBfdXBkYXRlICY9IH5DU0lEX1JVUF9BVVBfUkRJKHBvcnRfaWQpOwo+
PiArIGNzaWQtPnJ1cF91cGRhdGUgJj0gfkNTSURfUlVQX0FVUF9SREkocG9ydF9pZCk7Cj4+ICt9
Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIF9fY3NpZF9hdXBfdXBkYXRlKHN0cnVjdCBjc2lkX2Rldmlj
ZSAqY3NpZCwgaW50IHBvcnRfaWQpCj4+ICt7Cj4+ICsgY3NpZC0+YXVwX3VwZGF0ZSB8PSBDU0lE
X1JVUF9BVVBfUkRJKHBvcnRfaWQpOwo+PiArIHdyaXRlbChjc2lkLT5hdXBfdXBkYXRlLCBjc2lk
LT5iYXNlICsgQ1NJRF9BVVBfQ01EKTsKPj4gKwo+PiArIF9fY3NpZF9hdXBfcnVwX3RyaWdnZXIo
Y3NpZCk7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyB2b2lkIF9fY3NpZF9yZWdfdXBkYXRlKHN0cnVj
dCBjc2lkX2RldmljZSAqY3NpZCwgaW50IHBvcnRfaWQpCj4+ICt7Cj4+ICsgY3NpZC0+cnVwX3Vw
ZGF0ZSB8PSBDU0lEX1JVUF9BVVBfUkRJKHBvcnRfaWQpOwo+PiArIHdyaXRlbChjc2lkLT5ydXBf
dXBkYXRlLCBjc2lkLT5iYXNlICsgQ1NJRF9SVVBfQ01EKTsKPj4gKwo+PiArIF9fY3NpZF9hdXBf
cnVwX3RyaWdnZXIoY3NpZCk7Cj4+ICt9Cj4KPiBbU2V2ZXJpdHk6IEhpZ2hdCj4gRG9lcyB0aGlz
IGludHJvZHVjZSBhIGRhdGEgcmFjZSBvbiBjc2lkLT5hdXBfdXBkYXRlIGFuZCBjc2lkLT5ydXBf
dXBkYXRlPwo+Cj4gSWYgYSBzdHJlYW0gaXMgY29uZmlndXJlZCBpbiBwcm9jZXNzIGNvbnRleHQg
dmlhIGNzaWRfc2V0X3N0cmVhbSgpLAo+IF9fY3NpZF9hdXBfdXBkYXRlKCkgYW5kIF9fY3NpZF9y
ZWdfdXBkYXRlKCkgbW9kaWZ5IHRoZSBzaGFyZWQgc3RhdGUgd2l0aAo+IG5vbi1hdG9taWMgYml0
d2lzZSBvcGVyYXRpb25zICh8PSkuCj4KPiBJZiBhbiBpbnRlcnJ1cHQgKHN1Y2ggYXMgUlVQX0RP
TkUpIGZpcmVzIGNvbmN1cnJlbnRseSBmb3IgYW4gYWxyZWFkeSBydW5uaW5nCj4gc3RyZWFtLCBj
c2lkX2lzcigpIHdpbGwgZXhlY3V0ZSBhbmQgY2FsbCBfX2NzaWRfYXVwX3J1cF9jbGVhcigpLCB3
aGljaCBtb2RpZmllcwo+IHRoZSBzYW1lIHZhcmlhYmxlcyB1c2luZyBub24tYXRvbWljIGJpdHdp
c2UgY2xlYXIgb3BlcmF0aW9ucyAoJj0gfikuCj4KPiBCZWNhdXNlIHRoZXNlIGJpdHdpc2Ugb3Bl
cmF0aW9ucyBsYWNrIGxvY2tpbmcsIGNvdWxkIHRoZSBpbnRlcnJ1cHQncwo+IG1vZGlmaWNhdGlv
bnMgYmUgbG9zdCwgY2F1c2luZyB0aGUgaGFyZHdhcmUgdG8gcmVjZWl2ZSBhbiBpbnZhbGlkIEFV
UC9SVVAKPiBjb21tYW5kIG1hc2s/IFRoaXMgbWlnaHQgbGVhZCB0byBicm9rZW4gc3RyZWFtaW5n
IHdoZW4gZHluYW1pY2FsbHkgY29uZmlndXJpbmcKPiBtdWx0aXBsZSB2aXJ0dWFsIGNoYW5uZWxz
Lgo+CkFkZGl0aW9uYWwgcmVwbHkgZm9yIHRoaXMuIEFzIHRoaXMgcmVsYXRlcyB0byBDQU1TUyBh
cmNoIHNvIHRoYXQgYQpzZXBhcmF0ZSBzZXJpZXMgd2lsbCB0YWtlIGNhcmUgdGhpcy4gS2FhbmFw
YWxpIHNlcmllcyB3aWxsIGNvbnRpbnVlCmZvY3VzaW5nIG9uIHRoZSBwbGF0Zm9ybSBlbmFibGlu
Zy4gVGhhbmtzLgoKQmVzdCBSZWdhcmRzLApIYW5neGlhbmcKCgpPbiBUdWUsIFNlcCAyOSwgMjAy
NiBhdCAyOjE34oCvUE0gPHNhc2hpa28tYm90QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gVGhhbmsg
eW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQgMiBwb3Rl
bnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Cj4gLSBbSGlnaF0gbWVkaWE6IHFjb20vY2Ftc3M6
IGRhdGEgcmFjZSBvbiBjc2lkLT5hdXBfdXBkYXRlIGFuZCBydXBfdXBkYXRlCj4gLSBbTWVkaXVt
XSBtZWRpYTogcWNvbS9jYW1zczogaW50ZWdlciB1bmRlcmZsb3cgaW4gX19jc2lkX2NvbmZpZ3Vy
ZV9yeAo+IC0tCj4KPiBjb21taXQgNjExYWJkZWI0YjVkYTU3NGFlMjkyZDFmZjczNmQwZDcxZjJm
NGVkMgo+IEF1dGhvcjogSGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3NzLnF1YWxjb21tLmNv
bT4KPgo+IG1lZGlhOiBxY29tOiBjYW1zczogY3NpZDogQWRkIHN1cHBvcnQgZm9yIENTSUQgR2Vu
NAo+Cj4gQWRkIHN1cHBvcnQgZm9yIHRoZSBDU0lEIEdlbjQgaGFyZHdhcmUgZm91bmQgb24gS2Fh
bmFwYWxpIFNvQy4KPgo+IEludHJvZHVjZSBHZW40IHJlc291cmNlIGRlc2NyaXB0aW9ucyBhbmQg
aW1wbGVtZW50IHRoZSBoYXJkd2FyZS1zcGVjaWZpYwo+IHJlZ2lzdGVyIHByb2dyYW1taW5nLCBy
ZXNldCBzZXF1ZW5jZSwgYW5kIEJVRl9ET05FIGludGVycnVwdCBoYW5kbGluZy4KPgo+IEdlbjQg
c3BsaXRzIFJVUCBhbmQgQVVQIHVwZGF0ZXMgaW50byBzZXBhcmF0ZSByZWdpc3RlcnMgYW5kIHVz
ZXMgYSBTRVQKPiByZWdpc3RlciB0byBjb21taXQgdGhlIHVwZGF0ZXMuIFVwZGF0ZSB0aGUgQ1NJ
RCBpbnRlcmZhY2UgdG8gc3VwcG9ydAo+IGJvdGggdGhpcyBzY2hlbWUgYW5kIHRoZSBsZWdhY3kg
Y29tYmluZWQgcmVnX3VwZGF0ZSBtZWNoYW5pc20uCj4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC1nZW40LmMgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC1nZW40LmMKPiA+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAwLi40ZmYyZjQxZjcwZjdlCj4gPiAtLS0g
L2Rldi9udWxsCj4gPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ft
c3MtY3NpZC1nZW40LmMKPiBbIC4uLiBdCj4gPiArc3RhdGljIHZvaWQgX19jc2lkX2F1cF9ydXBf
Y2xlYXIoc3RydWN0IGNzaWRfZGV2aWNlICpjc2lkLCBpbnQgcG9ydF9pZCkKPiA+ICt7Cj4gPiAr
ICAgICAvKiBIYXJkd2FyZSBjbGVhcnMgdGhlIHJlZ2lzdGVycyB1cG9uIGNvbnN1bWluZyB0aGUg
c2V0dGluZ3MgKi8KPiA+ICsgICAgIGNzaWQtPmF1cF91cGRhdGUgJj0gfkNTSURfUlVQX0FVUF9S
REkocG9ydF9pZCk7Cj4gPiArICAgICBjc2lkLT5ydXBfdXBkYXRlICY9IH5DU0lEX1JVUF9BVVBf
UkRJKHBvcnRfaWQpOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgdm9pZCBfX2NzaWRfYXVwX3Vw
ZGF0ZShzdHJ1Y3QgY3NpZF9kZXZpY2UgKmNzaWQsIGludCBwb3J0X2lkKQo+ID4gK3sKPiA+ICsg
ICAgIGNzaWQtPmF1cF91cGRhdGUgfD0gQ1NJRF9SVVBfQVVQX1JESShwb3J0X2lkKTsKPiA+ICsg
ICAgIHdyaXRlbChjc2lkLT5hdXBfdXBkYXRlLCBjc2lkLT5iYXNlICsgQ1NJRF9BVVBfQ01EKTsK
PiA+ICsKPiA+ICsgICAgIF9fY3NpZF9hdXBfcnVwX3RyaWdnZXIoY3NpZCk7Cj4gPiArfQo+ID4g
Kwo+ID4gK3N0YXRpYyB2b2lkIF9fY3NpZF9yZWdfdXBkYXRlKHN0cnVjdCBjc2lkX2RldmljZSAq
Y3NpZCwgaW50IHBvcnRfaWQpCj4gPiArewo+ID4gKyAgICAgY3NpZC0+cnVwX3VwZGF0ZSB8PSBD
U0lEX1JVUF9BVVBfUkRJKHBvcnRfaWQpOwo+ID4gKyAgICAgd3JpdGVsKGNzaWQtPnJ1cF91cGRh
dGUsIGNzaWQtPmJhc2UgKyBDU0lEX1JVUF9DTUQpOwo+ID4gKwo+ID4gKyAgICAgX19jc2lkX2F1
cF9ydXBfdHJpZ2dlcihjc2lkKTsKPiA+ICt9Cj4KPiBbU2V2ZXJpdHk6IEhpZ2hdCj4gRG9lcyB0
aGlzIGludHJvZHVjZSBhIGRhdGEgcmFjZSBvbiBjc2lkLT5hdXBfdXBkYXRlIGFuZCBjc2lkLT5y
dXBfdXBkYXRlPwo+Cj4gSWYgYSBzdHJlYW0gaXMgY29uZmlndXJlZCBpbiBwcm9jZXNzIGNvbnRl
eHQgdmlhIGNzaWRfc2V0X3N0cmVhbSgpLAo+IF9fY3NpZF9hdXBfdXBkYXRlKCkgYW5kIF9fY3Np
ZF9yZWdfdXBkYXRlKCkgbW9kaWZ5IHRoZSBzaGFyZWQgc3RhdGUgd2l0aAo+IG5vbi1hdG9taWMg
Yml0d2lzZSBvcGVyYXRpb25zICh8PSkuCj4KPiBJZiBhbiBpbnRlcnJ1cHQgKHN1Y2ggYXMgUlVQ
X0RPTkUpIGZpcmVzIGNvbmN1cnJlbnRseSBmb3IgYW4gYWxyZWFkeSBydW5uaW5nCj4gc3RyZWFt
LCBjc2lkX2lzcigpIHdpbGwgZXhlY3V0ZSBhbmQgY2FsbCBfX2NzaWRfYXVwX3J1cF9jbGVhcigp
LCB3aGljaCBtb2RpZmllcwo+IHRoZSBzYW1lIHZhcmlhYmxlcyB1c2luZyBub24tYXRvbWljIGJp
dHdpc2UgY2xlYXIgb3BlcmF0aW9ucyAoJj0gfikuCj4KPiBCZWNhdXNlIHRoZXNlIGJpdHdpc2Ug
b3BlcmF0aW9ucyBsYWNrIGxvY2tpbmcsIGNvdWxkIHRoZSBpbnRlcnJ1cHQncwo+IG1vZGlmaWNh
dGlvbnMgYmUgbG9zdCwgY2F1c2luZyB0aGUgaGFyZHdhcmUgdG8gcmVjZWl2ZSBhbiBpbnZhbGlk
IEFVUC9SVVAKPiBjb21tYW5kIG1hc2s/IFRoaXMgbWlnaHQgbGVhZCB0byBicm9rZW4gc3RyZWFt
aW5nIHdoZW4gZHluYW1pY2FsbHkgY29uZmlndXJpbmcKPiBtdWx0aXBsZSB2aXJ0dWFsIGNoYW5u
ZWxzLgo+Cj4gPiArCj4gPiArc3RhdGljIHZvaWQgX19jc2lkX2NvbmZpZ3VyZV9yeChzdHJ1Y3Qg
Y3NpZF9kZXZpY2UgKmNzaWQsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QgY3NpZF9waHlfY29uZmlnICpwaHkpCj4gPiArewo+ID4gKyAgICAgaW50IHZhbDsKPiA+ICsK
PiA+ICsgICAgIHZhbCA9IChwaHktPmxhbmVfY250IC0gMSkgPDwgQ1NJMl9SWF9DRkcwX05VTV9B
Q1RJVkVfTEFORVM7Cj4gPiArICAgICB2YWwgfD0gcGh5LT5sYW5lX2Fzc2lnbiA8PCBDU0kyX1JY
X0NGRzBfREwwX0lOUFVUX1NFTDsKPiA+ICsgICAgIHZhbCB8PSAocGh5LT5jc2lwaHlfaWQgKyBD
U0kyX1JYX0NGRzBfUEhZX1NFTF9CQVNFX0lEWCkKPiA+ICsgICAgICAgICAgICA8PCBDU0kyX1JY
X0NGRzBfUEhZX05VTV9TRUw7Cj4gPiArICAgICB3cml0ZWwodmFsLCBjc2lkLT5iYXNlICsgQ1NJ
RF9DU0kyX1JYX0NGRzApOwo+Cj4gW1NldmVyaXR5OiBNZWRpdW1dCj4gQ2FuIHRoaXMgY29kZSB1
bmRlcmZsb3cgaWYgcGh5LT5sYW5lX2NudCBpcyAwPwo+Cj4gSWYgdGhlIGRldmljZSB0cmVlIGlu
Y29ycmVjdGx5IG9taXRzIHRoZSBkYXRhLWxhbmVzIHByb3BlcnR5LCBwaHktPmxhbmVfY250IGNh
bgo+IGV2YWx1YXRlIHRvIDAuCj4KPiBXaGlsZSBfX2NzaWRfY29uZmlndXJlX3JkaV9zdHJlYW0o
KSBwcm92aWRlcyBhIGZhbGxiYWNrIGZvciB0aGlzIHNjZW5hcmlvOgo+Cj4gICAgIGlmICghbGFu
ZV9jbnQpCj4gICAgICAgICBsYW5lX2NudCA9IDQ7Cj4KPiBfX2NzaWRfY29uZmlndXJlX3J4KCkg
b21pdHMgdGhpcyBjaGVjay4gSWYgcGh5LT5sYW5lX2NudCBpcyAwLAo+IChwaHktPmxhbmVfY250
IC0gMSkgdW5kZXJmbG93cyB0byAtMS4gVGhpcyB3b3VsZCByZXN1bHQgaW4gd3JpdGluZyAweEZG
RkZGRkZGCj4gdG8gQ1NJRF9DU0kyX1JYX0NGRzAsIGNsb2JiZXJpbmcgYWxsIGl0cyBmaWVsZHMu
Cj4KPiBTaG91bGQgdGhlcmUgYmUgYSBzaW1pbGFyIGZhbGxiYWNrIG9yIHZhbGlkYXRpb24gY2hl
Y2sgaGVyZSB0byBwcmV2ZW50Cj4gaGFyZHdhcmUgbWlzY29uZmlndXJhdGlvbj8KPgo+IC0tCj4g
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYw
OTI4LWthYW5hcGFsaS1jYW1zcy12MTctMC1kY2YzZmQzN2Y3NmNAb3NzLnF1YWxjb21tLmNvbT9w
YXJ0PTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
