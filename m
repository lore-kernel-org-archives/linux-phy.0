Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D945FCDB46F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jun 2026 14:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RT+Q308jAL0toCf/Q+n2PiJR/B88GcxvAGLM++pdXmI=; b=Q9PrFKxWJPksh8
	FnGw8qXxSuSTpu9sl8EJ8qaGOe8w8neqOB6R9NXpIAEngMdXRHt3GTHJqRh8nkXpU04UQ8AHRHymZ
	64MnujAprQWxQI+9R2Fsvpc0c13kCUkF2Qvjtgzln9Su+4d5mpEJ3Qa99nBRBYYbBOeAuV2GYt3OG
	KB4nUvda67XlChFZJ0HHiUINoooaPBuTFfrDfoS26kJIUrpCD5KHSItX5l9dkpZQHPk8IYg4mdy1E
	BRakmPLLoaphFSBMFzBMUeWIQ+R6PZy+2fQstTcLacYD/SE7rpUDJQ2KJ20+0Zk091lnuWnm1giqV
	XynphHZg2WFKH2cQcuLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbfKq-000000053Br-0OJv;
	Mon, 22 Jun 2026 14:09:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbfKn-000000053BQ-2FPN
	for linux-phy@lists.infradead.org;
	Mon, 22 Jun 2026 14:09:11 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65MDGFGf1062938
	for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 14:09:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8F2D2XJYiv9t6673rlEnIKYq+3oUjJnSIMZO2qDauaE=; b=OwaS/eYcL/DzLaXf
	I1rZ9Es8Me08EuamKRhDMc97a6z+fUKPBv6jqxHySXCmkt7RTZjO54SMk8ZST7KK
	/Riyy8mXHLFXsL/S1tY75ARTSoyvAKxa9+ptc+0wpmJ+ncL1xfHzMEujzXFt0HuE
	dQbUAu6CVzDaVj8uDX5JrVFUKI1oS7dxer0A4qU4qa7wLBDEfuLGHrNEFllmcZdh
	uWDX86fw6cB9+VOjFfHfGB2Eb3TksgAmgDjcMz3L3fBVeQYEhJvC9vm5uaqpm7Y6
	Xv/7ScvPZ12lQWGnuCLLxDzci2h2C4F1iYNtjslgxLRMjzhMlKcHXB0muXIzcIMR
	Ttt0DQ==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4exyn1su19-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 14:09:07 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-71f4e6ff16eso5794563137.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Jun 2026 07:09:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782137347; cv=none;
        d=google.com; s=arc-20240605;
        b=i9hJ54g0XopuDkU6KRQO/FvHCk5IMwikHPokqwLTuMAMn1tt2PdBmmkm8f/5BotDOB
         PsH0tVjc3AKAUwBXDoknE0kdXz5ynacVurUobtzuzvQHRlet94hNKyFc0OrKNa90yq7b
         UHWwKPqKyiCcnmS5u7bb+xLo552eaauA6jrSLcGqwNwSBbAz3oMLwWekzv8V2LnaUqK7
         Iau1YFn/H8G1yS9y//uVE4YjKJ+ivVK5cP5H7ShGC5bUiGOmu23a1emVd6QsZMwLPgU6
         m85/gKZe4sAju8WN07eRA5GagMjiKzcTXwRNnKtVwONH8/VNrUl5dEAQyZO4gNfK8lxn
         bkvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8F2D2XJYiv9t6673rlEnIKYq+3oUjJnSIMZO2qDauaE=;
        fh=843x77LFF9WCbkwSuCJgw0RXbhNvhaqEqFDGrTAV8EE=;
        b=NOVbSXxGiTq3EJoZ3WUm22mEGc55AVt/Bbx2rgojQUj2qqe5GWDmRj3yuV5jLpCNIu
         rnPRe/4t/ZQoDaTyTsgzzvZ7ydfdJqJYkzf7xCKg4BJofh0DcGd3/gEpvJm8W2AQQLVx
         VAK1ezM4sjlQzeYJPzV10XCewwIWK+e5hjcvw/6hT8M3EjiSpQ0iJ4uG2Mnab3y/hdxK
         L7Tv2bvFdoz2LaxomfJy6MRCfOHBm73HQu1PxrVYwfJADS0gniD2oNsGjMjU+TxxJbV8
         I3LN2xqPHBtQ6YXWIJX5JT+QBAWPimji/gVLdnYc3oH7yxB7Sp6cm2XKQP0kGRuDZL3A
         /Wxg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782137347; x=1782742147; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8F2D2XJYiv9t6673rlEnIKYq+3oUjJnSIMZO2qDauaE=;
        b=iMaWtiPvFjBbKaf1W/IJ0CIMNDW0Ld4uCpThszSjz8y4iMHakFXASINSotN6knTvTR
         /MAdH1fqe4rADvhfpmqTgu+/Rf4Dmerub5OXcqmFxcZwlmPK/3NMV+B7q6qfXzXdxEC9
         yab9xsW+couP0HWk/SYMQJDyq4wB6+HaDN9UViJEGLisUGMLk5q0fWYwepj5sov37mvd
         kB5NINbNH3dncyTn0VZSqAi1S7N66j+rCW7YjXfBsDyGWaAeKEd+APH/w8vaAHcUw97j
         V0xXmX3O+avkb8jd4w7Ozvz6ur79EEwpKAJxopJtXEQ7PorEN7xc4MQwlgv+kbIgaQgs
         f6aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782137347; x=1782742147;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8F2D2XJYiv9t6673rlEnIKYq+3oUjJnSIMZO2qDauaE=;
        b=X8lKDOG/yjz87X6PIxJM+HNPINOEgPZzupgT7ELpf3yUloOkLS8V1Vee/41H59YLPt
         BjSZW8D9w5pVZEkEtcEf4IpJFe+er/YAXslqwYiUxUidSSdznnIcAcaIhCJ8IUIXAzyo
         kjCZuqp0OWLLcsboXh0Ha2mmpgNZpILyYOQGDBJyouz4wljBkwU23Rd3484wkKf1D51D
         tBXfRIvg9s0p/O8Z6tv8Y0g/P3UQqS2MZGwCUoKHaB04hHHoi4Ll4hqlz4LxoyDZ0efX
         6hU1sjWU7fJVEAK/lDQaRsbquN3wVopSYn+NLAdAs0TsR4txqa+PVgEf/mDdeKqlx31o
         2kJA==
X-Forwarded-Encrypted: i=1; AFNElJ8i0HU7CAge7hUCy5N3iyq9zLfKZZhq+57PNAk+0tZC9OEifF9tnfAQ+1Z1WM1IHUCkbIm3k34Ktl8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWMeFHQms0euyX920eiq1u3+94VX4jpbva2U4Qa1JUMAbVwZQk
	xUVtOzeulD1eYg38EF8qJJWZR6rKYkBAPiHaRiXAG44396m/jDr+ppr4sHbEzLUROh1MWvJvurj
	i6mhmFYqqZv+ePS96LtFM6ijcrkYDWdRDgEX6Eue2uXDTBRpSHF57ZFMvZ5NTf8ryrqa8WHddyX
	7yKbW19W+a5h/EW+aW4Gtq2z/wIQA6t2ebFF6t5FP07Wg=
X-Gm-Gg: AfdE7clmQUFzmiqw6UUDfd3aX6QzUMtssiYR6OMNJt7Ua1VpEmm3Wttlc/2DgpJbK8E
	HWZsFNniFqQokufaGljLzw0cwhX5Yi/fm1LIFD4FrGRmpePsWD6fphpO3qM5DRVP8rxQpU+wZN1
	6J16zrNop7Agta5ix1lgWq0bVy7WSm9ZsiYLJiFmZ1BTyAdjKj8F2FbaXj1j7la4LPR05L5SClT
	mz7yiUnDNSE4cF7EEF9ivUTMKTBDaeIAVbT8H9misxRe0vU697vucr7W7xPhOLazbZ0wURbovF0
	RhVKWYZPLw==
X-Received: by 2002:a05:6102:94c:b0:639:4bb7:c916 with SMTP id ada2fe7eead31-72a767f94cbmr7292332137.3.1782137347207;
        Mon, 22 Jun 2026 07:09:07 -0700 (PDT)
X-Received: by 2002:a05:6102:94c:b0:639:4bb7:c916 with SMTP id
 ada2fe7eead31-72a767f94cbmr7292276137.3.1782137346809; Mon, 22 Jun 2026
 07:09:06 -0700 (PDT)
MIME-Version: 1.0
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 22 Jun 2026 16:08:55 +0200
X-Gm-Features: AVVi8Cdxu7NAlkP6yLvTDdtoyFpBtKVQYUlnmHNky4ya30e3n3LB9oUky-fhdQQ
Message-ID: <CAFEp6-3De6r3XwSmnKpMSSf8KK3K-esDAhTRKN41Bng-Yf8dXg@mail.gmail.com>
Subject: Re: [PATCH 0/6] Additional regulator support for the Qualcomm SGMII
 SerDes PHY
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Proofpoint-GUID: gBRpHBPGXrjku5Cg2JFFBPNx-dqCBFqW
X-Authority-Analysis: v=2.4 cv=EOU2FVZC c=1 sm=1 tr=0 ts=6a394203 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8 a=CcxlLIvrYPQ71yEhQx8A:9
 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIyMDE0MCBTYWx0ZWRfX+1qW2Ey2eAzs
 hh7Mt0UXE1pLafFtWzBg5OuRyBz5zQrJmA4jeyAQv1iGMX6K0QWxPa5GWnhVdzEL4RoALCrhI4/
 kWvFJcI2yyGvjik9bfE6LKQ25XNhQ+w=
X-Proofpoint-ORIG-GUID: gBRpHBPGXrjku5Cg2JFFBPNx-dqCBFqW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIyMDE0MCBTYWx0ZWRfX120t02sKXvth
 fzfCVyM8bAAvdoihL9HjvqqyakRDNNOVWmAr6Llys75k7SsA1vpVLV7+IJSayG1uoIt1vi7dtwb
 PhuxJLkWBcvcwhjGgAe76nPHDjUXdObPK+IB6t265gZIWb/9kokLXqU0Rr6Fg4mZa/TVGwy50a4
 j6rYUyyaOH9MzJLEadXkAjx7oc9YiD8rTdJ+kadG3COAxjAGsrMVLWjUl460KlWYZxbpShQGCVM
 fCPLPakFQkBQvEfjC7AydFVK4CSWyZp97US1XCUAIt7svz0sCy/9ucTYQ8EeiSOoRl+SKpJwXRv
 eOj/PrYWBEyJ7zpwz1ToHBsoEvciV9fRo6VqSlb3mXdxHa1lStAF5GeAiMXbbAvcej3MCecODdO
 Y5uJTLC7hkeKyhdNvgUDTy/0DXTTbtA6UeuMw8x0ccTEAzzPPbX+zXnpKtqD0ZfEzYftkXYcmcC
 qWC6sNMWHstVqugxE3w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-22_02,2026-06-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606220140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_070910_058344_88F1EFD0 
X-CRM114-Status: GOOD (  24.79  )
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

SGksCgpPbiBNb24sIE5vdiAyNCwgMjAyNSBhdCAxMDoyNuKAr0FNIE1vaGQgQXlhYW4gQW53YXIK
PG1vaGQuYW53YXJAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIHNlcmll
cyBhZGRyZXNzZXMgYSBTZXJEZXMgcG93ZXItdXAgZmFpbHVyZSBvYnNlcnZlZCBvbiB0aGUKPiBR
Q1M4MzAwIFJpZGUgYm9hcmQgdXNpbmcgdGhlIHBoeS1xY29tLXNnbWlpLWV0aCBkcml2ZXIuIFRo
ZSBpc3N1ZSBvY2N1cnMKPiBiZWNhdXNlIHRoZSBTZXJEZXMgUEhZIHJlcXVpcmVzIGJvdGggTDVB
IGFuZCBMNEEgcmVndWxhdG9ycyB0byBiZQo+IGVuYWJsZWQgZHVyaW5nIGluaXRpYWxpemF0aW9u
LiBJZiBlaXRoZXIgb25lIG9mIHRoZW0gaXMgZGlzYWJsZWQsIHRoZQo+IHN0YXR1cyByZWdpc3Rl
ciBkb2VzIG5vdCByZXNldCwgYW5kIHRoZSBFdGhlcm5ldCBpbnRlcmZhY2UgZmFpbHMgdG8gY29t
ZQo+IHVwIGR1ZSB0byBhIHRpbWVvdXQ6Cj4KPiBbICAgNzcuMTA1NjUxXSBxY29tLWR3bWFjLXNn
bWlpLXBoeSA4OTA5MDAwLnBoeTogUVNFUkRFU19DT01fQ19SRUFEWV9TVEFUVVMgdGltZWQtb3V0
Cj4gWyAgIDc3LjExMzQ0N10gcWNvbS1ldGhxb3MgMjMwNDAwMDAuZXRoZXJuZXQgZXRoMDogX19z
dG1tYWNfb3BlbjogU2VyZGVzIHBvd2VydXAgZmFpbGVkCj4KPiBQcmVzdW1hYmx5LCB0aGUgaXNz
dWUgaXMgbm90IHNlZW4gb24gYWxsIHVzZXJzIG9mIHRoaXMgUEhZIGJlY2F1c2UgYm90aAo+IHJl
Z3VsYXRvcnMgYXJlIG9mdGVuIHNoYXJlZCB3aXRoIG90aGVyIHBlcmlwaGVyYWxzLiBIb3dldmVy
LCB0aGUgcG93ZXIKPiByYWlsIHNjaGVtYXRpY3MgZm9yIGJvYXJkcyB1c2luZyB0aGlzIFNlckRl
cyBQSFkgc2hvdyB0aGF0IGl0IGlzCj4gc3VwcGxpZWQgYnkgYm90aCBMNUEgKDEuMlYpIGFuZCBM
NEEgKDAuOVYpIHJlZ3VsYXRvcnMuCj4KPiBUaGlzIHNlcmllcyBoYXMgYmVlbiB0ZXN0ZWQgb24g
dGhlIFFDUzgzMDAgUmlkZSBib2FyZCwgYW5kIHRoZSByZXBvcnRlZAo+IGlzc3VlIHdhcyByZXNv
bHZlZC4gQWxsIE1vbmFjbyBhbmQgTGVtYW5zIGRlcml2YXRpdmUgYm9hcmRzIHJlcXVpcmUgdGhp
cwo+IG5ldyBjb25maWd1cmF0aW9uIGFzIHRoZXkgdXNlIHRoZSBzYW1lIFNlckRlcyBQSFkuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBNb2hkIEF5YWFuIEFud2FyIDxtb2hkLmFud2FyQG9zcy5xdWFsY29t
bS5jb20+CgpUaGlzIGFwcGVhcnMgdG8gYmUgYSByZWFsIGlzc3VlLCBidXQgSSBoYXZlbuKAmXQg
c2VlbiBhIG5ldyB2ZXJzaW9uIG9mCnRoZSBzZXJpZXMgb3IgYW55IHJlc3BvbnNlIHRvIHRoZSBm
ZWVkYmFjayBzbyBmYXIuIENvdWxkIHlvdSBwbGVhc2UKZm9sbG93IHVwIG9uIHRoaXM/Cgo+IC0t
LQo+IE1vaGQgQXlhYW4gQW53YXIgKDYpOgo+ICAgICAgIGR0LWJpbmRpbmdzOiBwaHk6IGRlc2Ny
aWJlIGFkZGl0aW9uYWwgcmVndWxhdG9yIGZvciBRdWFsY29tbSBTR01JSSBQSFkKPiAgICAgICBh
cm02NDogZHRzOiBxY29tOiBsZW1hbnMtZXZrOiBhZGQgYWRkaXRpb25hbCBTZXJEZXMgUEhZIHJl
Z3VsYXRvcgo+ICAgICAgIGFybTY0OiBkdHM6IHFjb206IGxlbWFucy1yaWRlLWNvbW1vbjogYWRk
IGFkZGl0aW9uYWwgU2VyRGVzIFBIWSByZWd1bGF0b3JzCj4gICAgICAgYXJtNjQ6IGR0czogcWNv
bTogbW9uYWNvLWV2azogZml4IHRoZSBTZXJEZXMgUEhZIHJlZ3VsYXRvcnMKPiAgICAgICBhcm02
NDogZHRzOiBxY29tOiBxY3M4MzAwLXJpZGU6IGFkZCBhZGRpdGlvbmFsIFNlckRlcyBQSFkgcmVn
dWxhdG9yCj4gICAgICAgcGh5OiBxY29tOiBzZ21paS1ldGg6IGFkZCBzZWNvbmQgcmVndWxhdG9y
IHN1cHBvcnQKPgo+ICAuLi4vYmluZGluZ3MvcGh5L3Fjb20sc2E4Nzc1cC1kd21hYy1zZ21paS1w
aHkueWFtbCB8ICA0ICsrKysKPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2xlbWFucy1ldmsu
ZHRzICAgICAgICAgICAgfCAgMSArCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9sZW1hbnMt
cmlkZS1jb21tb24uZHRzaSAgIHwgIDQgKysrKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
bW9uYWNvLWV2ay5kdHMgICAgICAgICAgICB8ICAzICsrLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3Fjb20vcWNzODMwMC1yaWRlLmR0cyAgICAgICAgICB8ICAyICsrCj4gIGRyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXNnbWlpLWV0aC5jICAgICAgICAgIHwgMjQgKysrKysrKysrKysrKysr
KysrKysrLQo+ICA2IGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gLS0tCj4gYmFzZS1jb21taXQ6IDBmMjk5NTY5Mzg2N2JmYjI2MTk3YjExN2NkNTU2MjRk
ZGM1NzU4MmYKPiBjaGFuZ2UtaWQ6IDIwMjUxMTI0LXNnbWlpZXRoX3NlcmRlc19yZWd1bGF0b3It
MDI3ZmM2YjE1MjE2Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gLS0KPiBNb2hkIEF5YWFuIEFud2FyIDxt
b2hkLmFud2FyQG9zcy5xdWFsY29tbS5jb20+Cj4KPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
