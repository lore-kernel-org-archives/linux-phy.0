Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995EB606A33A
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 10:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1mIwdgpz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=DzghUXN3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=hJM8ZVNO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nkB4X/E1JNE2VpSV+zPArAfEYrtAtKBURhr/wPMyrbY=; b=1mIwdgpzdS6vlacqDUAksot8zv
	W2TOeeVH2RP3HeLNXOoKHNP9Iw4pbNqtdIVtcgiLcWKEd6YU37J5auT0yu1G0uqmUNUZmNYzhBYo9
	6ZafsVSRuhe5NbZ70OIJNbvIH/qTjwIO8vyUwxBY3NncK9c/EFmubvfYgqudlFqIjV0huCx+lvT2G
	wB3tZCVA6rQwr+BK8e3cD843hnK57tLW3do4yROIIY+UUoAdtWynH2cnsGzVlyE7m1gUQNq6k+xh4
	91BiNB8Z4z0AGvRErLYKlwo/T7+tXLY1EeWKeV3tKNQI1yNze3lXSpuHbGWFtJgvNS6gOIG04jY5E
	NjuZduvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHqM-00000002G0W-1XQx;
	Mon, 26 Oct 2026 10:22:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHqK-00000002Fzb-0cOs
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 10:22:17 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69Q4b9s0718218
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 10:22:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KHrbmOf2F0FaoGuY9SF3WxuZWl8t4HRAuFWN10h/1qA=; b=DzghUXN3GTriIoQo
	uVKgpHKJuKi2N+Uxol72TGifH6HJfclAUE27lq7LK+SiKWdF5BDiybBP6PaNCyao
	75JN3do5HIGuGXpP36SEc0/JhsOceDOA5od4cqpVX0RY8iF/zZMnHvKoC03XejAZ
	saR6NQAfwO+CavhgH1S3C0H+3flrzrG1XmEZLyvxeCJMX3+0+UwWUd9Re5itBGD2
	W4UxjqyodaKDeTL9yNScNt/YynzCv/AfJmS92TqJQHTK1T2lUgoo9kASCHnf7O0X
	KV7ha4iPcf5OwVVCuw4kFn+SMzY5KuRDoSs2H3yWohI045L/e0TrqFk5LjfFItax
	HjipPA==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hhsgssyut-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 10:22:15 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-98bcae867a1so960918241.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 03:22:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793010134; cv=none;
        d=google.com; s=arc-20260327;
        b=Q6LfWEHPjVYboNkpKrc4IZUoCdDgEaZgcaeKD3MqQp1mya9c7DFZA9x5XpzPZgB6yR
         jCvtPulaYWh5moLwbF3TYjm6CdVVweLrlNcfV5uB8dGTIKibdA9nsLwnK6JxsbFS23IG
         ErDHTlzF73qV+c6sf+WqidsjBWd8rkdoFHkfMDNZLXk7Js9tyGi1VnDEWfZBJVRUbE+0
         XKpv2lDYODnRWZWFMxcrfn+nDQGZurA3kAjO6PDIAvkslglTJwwGyNQ7zRvjKNiO+zyO
         WjRW0J1mVQVwoxSiTMMVKNw7YnAXTlZGmZxApPbV/j6ehIvxDs6b6twzLHzHNEj8mxST
         qbHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KHrbmOf2F0FaoGuY9SF3WxuZWl8t4HRAuFWN10h/1qA=;
        fh=WWoc1WNa4SXutfaWceqKAV/DQFg5a8hrMAuV0B9RK9c=;
        b=VMV/NZKy4igU8rc+Lhjd7vZ4SPUn9jwjF6HUc4gULgJ5cj3dZK/TD2XGFH0yCgmBeH
         zLREyvHNrJ2jWBTvZ+Eewj9oKo4b2b1v6Gb8zPjpVI6xXOhaNhenCiQzSjQ+jQ6UP1wM
         GS2sS4jKmxwrutCCh2Pv6MDnD7fMW3/b4aJTkpAo/ZIphXkGBUOdjfTYwW53wMBoo7EO
         O4zlnkcuLvuTPZ8A9jw23FsM1p9ovpV3E7LQwm6WZAyxfupum8qYbT+v5NYM016JLskx
         Eml3YyKBbeGtTh05nR0PUsVeJyRpRdVoQkBbW0Fpzdw/V+Sk/5ro2z5blvL0dCUcAQMo
         UVEQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793010134; x=1793614934; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KHrbmOf2F0FaoGuY9SF3WxuZWl8t4HRAuFWN10h/1qA=;
        b=hJM8ZVNO5U3oFAXzjshXK3uPFkpUbwa8pPkaW4aNpFV+eEbfZ/T7AB9XdenIBB2EIz
         ZFMrwYya6nju6zyw+sn3LKxEEjTf9yQhrww3WeVIA+b13AR16EIPP32sJw+hAFi6LXyJ
         jhWLiML8VmVKaA7K+ai4g2rHv+GvlXg6DIwVBodpq/+Mcgp4wTIBi4OHm/fut7aQNDLj
         k+fNZK4eO8SsxNA6kUUWxivFndC8GfChwi6zm0JsTjSJt1J8FhqnJ+Pqh/ZV5b5Di7G+
         03c+T3vxKcrRgli/VUzNRlWLJ/fm4BaRW1rTu5euJWsR49lhXjfyDi7DriFG2kQGcfB9
         zg6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793010134; x=1793614934;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KHrbmOf2F0FaoGuY9SF3WxuZWl8t4HRAuFWN10h/1qA=;
        b=K6msEx9RvGcoUZlZ/H9r9oBouvXNbWvEAj0wdnI0j3TzYVAEXkEh8vjhLN16BhKYpy
         thH/bdroppeMo/T+qvoJBixd/JikI85NXu7K7CaEs+dSZf86xOTYLVHQwefBwAFf89Xv
         r/5xU1T+vAdhNgxQ2YmyHCbAzAv5nOPPwUiRj1oUVWi5NdSljSj6RoCXjZRsNgKXmUL2
         OPto88ib5Lx1xic2T7KPO3qvXmZfhxhmTFNnvT+AmZvg/1SYaCVFtPBtH9pfwXx9PNwR
         VrYfIoywKt84g3K/jBLwr66cYNR6fxuQcypyjx9gaeDspOt99N0N4Qzq2J2UQSOmKKPt
         Ovnw==
X-Forwarded-Encrypted: i=1; AKwUvBxhc/6lec48tmjhWTHq0wp8rTsEmgipXOHU9K2sP6VPOcG++7XDAwf/aFUD/vHrHDurkw2dWr926js=@lists.infradead.org
X-Gm-Message-State: AFq9FYLjx4pFQBeLAVpK7a3LAV8cTalBOh/Ga1oTJ1cr5a5eOqUdZXBF
	N214ImFVxYF9u/VAOYy/FOz0Fq0Zdl+q2jqOsJ7AZ9xuqc2LWLWnYWJuPRYo0zSatknIfA30I/H
	GwaOh0Nx6uWRYBWSMH2Pxq79P/WApCUhfckKmEDidaljsSQPyWXgN5qrRZWfWwxo3Ck0k3gzUlV
	hmUS0ek3QYNlCGnjpdVoSlxtntAxOLORV6RMw3BfOqQmc=
X-Gm-Gg: AYBFou0RGBD3rv4rSJq7uN0vs2ut5m32kb0c0nWiIyckn7xDTAI303LUsDsiPPZq8I9
	mcpa7QaH/gHineoKTA4CjCSuXkOCeJABFScPBU5hCpSTZ04PUFgOwwkW3wrEa9lZ89M/oKuVr/E
	6Uu81A6k3T6SxNBm600x3pCGUvwNN3t3zKtQ5OuY7IJU5gOR75ffmlaKY1m9cYb4zOW/7Oic/dx
	LFmus0NEnbvhL74Lw==
X-Received: by 2002:a05:6102:148e:b0:7c3:9b0c:a75 with SMTP id ada2fe7eead31-7ce5ccddaf8mr1532828137.12.1793010134564;
        Mon, 26 Oct 2026 03:22:14 -0700 (PDT)
X-Received: by 2002:a05:6102:148e:b0:7c3:9b0c:a75 with SMTP id
 ada2fe7eead31-7ce5ccddaf8mr1532813137.12.1793010134104; Mon, 26 Oct 2026
 03:22:14 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
 <20261024-kaanapali-camss-v22-9-7da3ea49c8a1@oss.qualcomm.com> <CAFEp6-2a9-P=eN-A3h_aWY=pbScKnwwn6me59S0oJipD4gLcmw@mail.gmail.com>
In-Reply-To: <CAFEp6-2a9-P=eN-A3h_aWY=pbScKnwwn6me59S0oJipD4gLcmw@mail.gmail.com>
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 26 Oct 2026 18:22:02 +0800
X-Gm-Features: AclHuK_xlm6aQdEz-Css4rzUDVJF4QbmrIMsutgXwCB88U0Xqwpq1be9I71U3vE
Message-ID: <CACbMrhrJTacHvdJ7eext9ucxwo4=XEDnnxxtL+DSpYzw+ozKxQ@mail.gmail.com>
Subject: Re: [PATCH v22 09/14] media: qcom: camss: vfe: Add support for VFE 1080
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI2MDA0MSBTYWx0ZWRfX9XHQlk3XQxgh
 mgOBEyXEpgQWvjqc2tqDEbFGbqRq5Ex5eSopz1cSY8Nz81cuMQTYezf1Sle3pJY9BrfDh++wdOc
 BMHwBvXfbODSAiZbJ7uwU5IstXPoTs0=
X-Proofpoint-GUID: AIWq0bM4PhUVemxe0K9KK8W-khKc7tK2
X-Authority-Analysis: v=2.4 cv=c+8+0h9l c=1 sm=1 tr=0 ts=6adf29d7 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8 a=q1ahQF__i1vN_A3V8cEA:9
 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-ORIG-GUID: AIWq0bM4PhUVemxe0K9KK8W-khKc7tK2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI2MDA0MSBTYWx0ZWRfX9KJXwKF86I+o
 pIXGm9scoTM0sZOtvcwsmQ2mMAMx2KSKZhK/XPi2vMI9KCZNlpHhv2VmdeO5PCsAc63mBAXvhBJ
 EXj80rcAbrTsnhH2PyW9f/llZ7mC5XbsGBfyl7Jg13UEWksQwpE0a/+aI2OQzY9UcDcsZ51RePu
 4+AD4PISMXwm/q9eJAjmZqiTCo8mM/Q7sEeUBU35wV8k4FpamklyyE4nUvAkqX7hMzcayZ10hOB
 qjYlqWFOLQr6JexxI/FnqIELDsJnjRMhDRf/c8Lieut3jnfaYHSReEifORUxfBkB7FaU/N1jIlz
 LQmhJs/sH4+RyZfGO9ssoSwATePQ9Bn2unqr8hIUdp2wfTpqDbeVeTYbaMUFXIFcHuZQg5DCtcs
 1O1M6ClNp7OvY9UYJz/Yc6qP2hjpMg5hnlaFdsNMi5YnWY2qXTdfhLxV3tMvwWv7wD51DQwv5nm
 KlNaUA+15DBEcWXZpLQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-26_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 adultscore=0 phishscore=0 impostorscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610260041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_032216_191621_CD4A7AFF 
X-CRM114-Status: GOOD (  16.70  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTAvMjYvMjAyNiA2OjAwIFBNLCBMb2ljIFBvdWxhaW4gd3JvdGU6Cj4gT24gU3VuLCBPY3Qg
MjUsIDIwMjYgYXQgNDoxN+KAr0FNIEhhbmd4aWFuZyBNYQo+IDxoYW5neGlhbmcubWFAb3NzLnF1
YWxjb21tLmNvbT4gd3JvdGU6Cj4+Cj4+IEFkZCBzdXBwb3J0IGZvciB0aGUgVkZFIChWaWRlbyBG
cm9udCBFbmQpIDEwODAgZm91bmQgb24gS2FhbmFwYWxpIFNvQy4KPj4KWy4uLl0KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMKPj4gaW5kZXggN2FjYWNlMzYzZmMy
Li5iZWNhNGI4MjdiMzIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9jYW1zcy5jCj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1z
cy9jYW1zcy5jCj4+IEBAIC0xNTYsNiArMTU2LDE1MiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGNh
bXNzX3N1YmRldl9yZXNvdXJjZXMgY3NpZF9yZXNfa2FhbmFwYWxpW10gPSB7Cj4+ICAgICAgICAg
IH0KPj4gICB9Owo+Pgo+PiArLyogSW4gS2FhbmFwYWxpLCBDQU1OT0MgcmVxdWlyZXMgYWxsIENQ
QVNfVEZFWCBjbG9ja3MKPj4gKyAqIHRvIG9wZXJhdGUgb24gYW55IFRGRSBGdWxsLgo+PiArICov
Cj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGNhbXNzX3N1YmRldl9yZXNvdXJjZXMgdmZlX3Jlc19r
YWFuYXBhbGlbXSA9IHsKPj4gKyAgICAgICAvKiBWRkUwIC0gVEZFIEZ1bGwgKi8KPj4gKyAgICAg
ICB7Cj4+ICsgICAgICAgICAgICAgICAuY2xvY2sgPSB7ICJnY2NfYXhpX2hmIiwgImNwYXNfYWhi
IiwgImNwYXNfZmFzdF9haGIiLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAidmZlMF9m
YXN0X2FoYiIsICJ2ZmUwIiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgImNwYXNfdmZl
MCIsICJjcGFzX3ZmZTEiLCAiY3Bhc192ZmUyIiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgImNhbW5vY19ydF9heGkiLCAiY2Ftbm9jX25ydF9heGkiLCAicWRzc19kZWJ1Z194byIgfSwK
Pgo+IE5vdyB0aGF0IHdlIGhhdmUgcG1fY2xrIGluIHRoZSBtYWluIGNhbXNzX3Jlc291cmNlcyBz
dHJ1Y3R1cmUsIGl0Cj4gd291bGQgbWFrZSBzZW5zZSB0byBtb3ZlIGNvbW1vbi90b3AtbGV2ZWwg
Y2xvY2tzLCBzdWNoIGFzIHRoZSBBSEIKPiBjbG9ja3MsIHRvIGl0LiBUaGF0IHdvdWxkIGF2b2lk
IGhhdmluZyB0byBkdXBsaWNhdGUgdGhlbSBhY3Jvc3MgZWFjaAo+IGluZGl2aWR1YWwgc3ViLWJs
b2NrLgo+CgpUaGFua3MgZm9yIHBvaW50aW5nIHRoaXMgb3V0LiBJIGRvdWJsZS1jaGVja2VkIGl0
LCBhbmQgdGhpcyBtYWtlcwpwZXJmZWN0IHNlbnNlLiBJJ2xsIG1vdmUgdGhlIGNvbW1vbi90b3At
bGV2ZWwgY2xvY2tzIHRvIHBtX2Nsay4KCi0tLQpCZXN0IFJlZ2FyZHMsCkhhbmd4aWFuZwoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
