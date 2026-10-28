Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4988606A32C
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 16:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XT2ZGxSu;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cOzzyruz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=fpF/2AJP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FTAEu9NzH1V2MdBkcTregk/MPPbBJGhZ1UEe/aadbYY=; b=XT2ZGxSu0Xyp2gaVKR9ZUQyA8X
	sGbyRfSoD1r7dsJgpnYj0lwnHRCqOnqTXLZlBaXqp4DQoW40/ICyxXFPB0ZRStgwMFMjy/e/BeaMc
	H8Alo0jZILJHW7+CMebXlEB1HcGKtdA+WUUf26/nY/sOqqXIIC6KxOxWcLSmI1Uhy13d0XARhty3x
	HkrRsEQxfoePBtH9KwzzNLXW6u9qCFgZ+0y1dYO01C29Y242+8iinw6DOx+FumRBzIMEZthcNU5bV
	7ewHmxos9zjQ1t4xFFRsJHcrmxH2PNbyd4M2/CRzJ4ZN3O2GV54P067CUoSsKR6N8RCOsZqeFSjP6
	tq4cBeVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM6dc-00000007YSa-0mDQ;
	Wed, 28 Oct 2026 16:36:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM6dZ-00000007YSF-3cOT
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 16:36:31 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFAeqU423530
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 16:36:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	q5t3Rh9YkGOdmO6RznnXKL/OB+E6bNdFE1taktSfjrQ=; b=cOzzyruznl/3f+kd
	dF8gHc4ZnOyeaQuF2Wzu+i1zbM2sU17jP2pI56YSWaZCcndRivqpYnA0iUAF7t5R
	dR4koZyQ7itVu6aj1uhpT5IclnlqeqgIUaqnfh06ic7KoVCQLuUXSg+F6neRTUpg
	kJOqf99d1xlzYx5FxsO//GZMilHJvro/YNXBLW3h4yeCTXxlI1qd1ctEhF+vQJlZ
	8WXxQ19Ajyb/ZHNqXsa8wYI6oC8hR4bbBJr7hdQYpQh957PukZDYaXLKDTgZdcml
	3KMJjQ+hURRL8V4vbToS2yodWc4Tmgr/D+gm8enyenPi3XNO/L37vYWIhvhyV869
	hy7VDw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkdsp1w06-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 16:36:27 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93f20addba1so197415085a.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 09:36:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793205387; cv=none;
        d=google.com; s=arc-20260327;
        b=WcAIB/+rRxIqyCJoNl1FNVsacMKR8O2Z/8Mll1+U3lYr8AQ/MR5UGWgLLQ9AaGAkPw
         8ZrOMwV7QWNLc40LLC3eB1C42dd91JI/J8kaDCPIaX5/eYjBgcWwudCETHl9D+y7rbMx
         1M9gvj5rLhUtbieK1+V6YsKDJof/5f3Tae4QvJo/c7WyyE9GPKL6szkatNqYPwo608+p
         cBSuH0wlUKIEA68YET64r42fIqOLZYH8xPWioYGD9jMR1WZ5QEGAhm/KRcB4y62wPxH3
         pA6Z+KrNgy7kmZskeebQG5yc+cJs+Prlrb/TmpULsKwROQ9xtNREkkIXAqcOs2wGy3OW
         0R/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=q5t3Rh9YkGOdmO6RznnXKL/OB+E6bNdFE1taktSfjrQ=;
        fh=NY0IC+NsCJxhem03OpQ7vxK74l2OBxmDFOJX3hUpmE8=;
        b=kxQkb2mJsJfwfcnejGPcPFNBbOsAOQv7+wEl1bBX6YdqiNVQNX1VSIZMrNCI1Zw9eg
         mGUKByp1jCH9zoN0pV/cVJrAFtZMaalzgof6GGILlDfIHhvDKBTF795G2XqQQ07UJtuL
         rhE61CV/6jq24cgcN2c4KvcoUcUviv7hHrExwT3oKZp41L1f7UCIw2CJ5pl56ZbjnQf9
         OuWjQq2keasVxdZI1aTAgULXqhnybhwAcLQBq0+ogEY4DuCQyLz3WVYzhELkzFD1zFKs
         oJGconwmlXZKzqb2RRJ2SSJrtwe9aGcf5Emr7CbhV0rg9Kh4LS/rIwxOlk7nuQQ707KI
         tCNg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793205387; x=1793810187; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=q5t3Rh9YkGOdmO6RznnXKL/OB+E6bNdFE1taktSfjrQ=;
        b=fpF/2AJPP5T79PNs6ivhQaZxAkciWcbWOdCn9QnYzdxjgFm0ZP96leRnPqbCGM1Se6
         7T5FcxrsHx7azvZ6YoljsLeoAFCpe3e5tYtOdNn8or9y8tqjF0AnynqwGL6k4jHHJ4fa
         EUAwRGjc2Bz426fg8cdDO35pWSkLfKEqczt1a+LK+AvMo3z0TZ1F4RmXnNCQw/SqfEOG
         odXtGDJ8O7gP3h6nj5YxhbutXen99BRYm2bXDhCxkQwkV9B1Roh0Ot3wv+IZqfAJM9Ge
         mCFTHk+OZiJR+jq+mRnvKZELRdLIxcQxHxk0Vd/NesJohPIBeKdSDNIlqXrKT+wZA1BQ
         ZIIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793205387; x=1793810187;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=q5t3Rh9YkGOdmO6RznnXKL/OB+E6bNdFE1taktSfjrQ=;
        b=wzSbkMzPmxvybtquBn90ZeOKeuFS/F7asf1yMARZqmxU/ET0OCAHkKqbM3Qdx1VW92
         +9dSrSG4MgLdfyqrhTsG30ciqDnWVV0EZQ+e020oEG9u2jUVmIMJKBhF1J86BTbO9UHx
         +gBAaZuH0fn2hQ2uFB7waMDSqElw61Lfe0dY4UYFjO+R83a+tR2Ddz+pEJ6q97l+v7YS
         J26kvFkhaixgDmQJNL2CX1yJnxF5uyMCFiZftoDdiHZD4FTtXia29NEq7Eh2UOd5Uoi0
         nmF4rPqmAMRwnPhZKLMWfzg4LsnqlL70bzgafpRmRfA2Hc/VckGy1z4d4QMLuWStLl2Y
         2iaQ==
X-Forwarded-Encrypted: i=1; AKwUvBwkANKOTa/PNN+HvO7zb1m4M4fPombG9Vf+SpJQOvbncTWMBXW5gXFLi4fJBzYXDtaK0KOlOE+dGv4=@lists.infradead.org
X-Gm-Message-State: AFq9FYIhm0C5E7MaSLdw2aahGzq+8ZfVX0DTUswkCvDWJiJ4W0F+S+3q
	+Q6fIphHzVPRUw3cb636YFqqwYPi1BlYfyP+Urfix9NnjdICMDd7aC9VMK8tqULJPr7ayxUPuRz
	lQfMoFO/1baKDRQjtCpAEG0KbcyUMWjlU/JSEJOhEVpBUAfcBVf53xj7dHN+FJ2udGxivlT00Vu
	kYr+BkxbV8qcojdS8py84WNr7HvOKRpM073qvKmMUvxkg=
X-Gm-Gg: AYBFou2OE1r7g0ZnnYPvp3AwCu7fhwDc8U5c9vFiMKRwqL5A0hp4azUveNq3KieNhrW
	r+WhcbjB2j/Unct5CbQz3otvoDpeP+bS48Y6OWqZndowK1xEO7IyybcBfxaYNqcTKy3t2zdc0wq
	JJHgYu6QV0Tj6T5wbTQU8XjMidgs/XqEInT4u6rheEcIZrSjUH6gAVK+LrufSKTMLdtD7i+FXvw
	GqrOZ+duOWywzvjxqypzrvkmF03xhHRc0Eq04ydynncFQX8a/fa2tLbMA9gpn10ethZFodVDGr1
X-Received: by 2002:a05:620a:46a6:b0:93f:2b23:481b with SMTP id af79cd13be357-94408aa219dmr459955885a.22.1793205387044;
        Wed, 28 Oct 2026 09:36:27 -0700 (PDT)
X-Received: by 2002:a05:620a:46a6:b0:93f:2b23:481b with SMTP id
 af79cd13be357-94408aa219dmr459949185a.22.1793205386506; Wed, 28 Oct 2026
 09:36:26 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com> <20261028-kaanapali-camss-v23-4-95f250b18612@oss.qualcomm.com>
In-Reply-To: <20261028-kaanapali-camss-v23-4-95f250b18612@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 17:36:15 +0100
X-Gm-Features: AclHuK_qZnIsa3_FMMHTiw2iXEoQpzgN5rjHWMbnvqMU6BVIbLYMNtYuWHeQqVU
Message-ID: <CAFEp6-1QvF+=XQQrdDQS0kM8f1zoz3s3MZECOOdmYjAaJeBZQQ@mail.gmail.com>
Subject: Re: [PATCH v23 04/15] media: qcom: camss: Add addr_update hooks and
 guard CSID reg_update
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
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
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
X-Proofpoint-GUID: Z3380-W0XTKimgJXWAoYQyJL7oQsel1K
X-Proofpoint-ORIG-GUID: Z3380-W0XTKimgJXWAoYQyJL7oQsel1K
X-Authority-Analysis: v=2.4 cv=Cssq4X4D c=1 sm=1 tr=0 ts=6ae2248b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8 a=vOQjydwpf4klcLd5GhIA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2NiBTYWx0ZWRfX2DSwWbQ0pZFb
 XFuflbKF8RHqIrmK8nPNwJJvJZZjw8CciTDUWVkltUXgkFAT8j57GWcsZVLloKuBGiAEtJegf0K
 a3/wi3IiWkkqoOKY0OsOg5ulCyQD9KXWXgiAGmII35tA/bzUbfQh6rp8YbZIW4JZag3k0AiXeh0
 GfL6M6cr3beGNvjk/mSVuK536VoNmwWcZDBtcrRB6nSxCOt8nobjeXU/muQ8IfeGVVDi3rflZaT
 Bvtk2Mgr9B3XI+rQ/7qmHGjMNaWhB9ezP69ZolN5NFSzFH6QxggbbjuCLPwiHtJ5S6OKO4kD93z
 Ez1sXQ6LyZnoZlA3igAl0SmHceSSoQl/n/fJ8piCLg5OAdMnQxBelyCSJPW+FFmPoCTzel2O4Tw
 YIShHQhrD7leliH82DZQl7Qb/05F+L3XDkmhSOrjIU5xo8A3onlE56XH9I4eeaW6wcnKBEPA6PO
 XgOUsANnpUuGvq8hjEw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2NiBTYWx0ZWRfX6KF/p+LmkX00
 XM3oPGauqat+zwGv3HjAXPZ9jZBgJfRAxv/C84XNrCojJRT+RvAFjhK0knjbRJUgOKKfWyRmWhp
 YUVJEO2exQGh/LT8zdce7GPKxUf0dW4=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610280066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_093630_042829_06FF115C 
X-CRM114-Status: GOOD (  25.95  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBPY3QgMjgsIDIwMjYgYXQgNDoyMeKAr1BNIEhhbmd4aWFuZyBNYQo8aGFuZ3hpYW5n
Lm1hQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOgo+Cj4gRnJvbSBDU0lEIDY4MCBvbiwgQ0FNSUYg
d2FzIG1vdmVkIGludG8gdGhlIENTSUQgYW5kIHRoZSBDU0lEIGJlY2FtZQo+IHJlc3BvbnNpYmxl
IGZvciBpc3N1aW5nIFJVUCBjb21tYW5kcy4gU3RhcnRpbmcgd2l0aCBDU0lEIDk4MCwgUlVQIGFu
ZAo+IEFVUCBhcmUgaXNzdWVkIHNlcGFyYXRlbHksIGFuZCBlYWNoIGNvbW1hbmQgbXVzdCBoYXZl
IGl0cyBjb3JyZXNwb25kaW5nCj4gU0VUIGJpdCBhc3NlcnRlZCBpbiBSVVBfQVVQX0NNRDsgb3Ro
ZXJ3aXNlLCB0aGUgaGFyZHdhcmUgaWdub3JlcyBpdC4KPgo+IENTSUQgOTgwIGFuZCBuZXdlciBy
ZXF1aXJlIGEgc3BlY2lmaWMgc3RyZWFtLW9uIHNlcXVlbmNlLiBBZnRlciB0aGUgUlgKPiBpcyBj
b25maWd1cmVkIGFuZCBiZWZvcmUgdGhlIFJESSBwYXRoIGlzIGVuYWJsZWQsIHRoZSBDU0lEIG11
c3QgZmlyc3QKPiBpc3N1ZSBhbiBBVVAgYW5kIHRoZW4gYSBSVVAuIEEgUlVQIGlzc3VlZCBiZWZv
cmUgdGhhdCBwb2ludCB3b3VsZCBsZWF2ZQo+IHRoZSBWRkUgd2l0aG91dCBhIEJVRl9ET05FIGV2
ZW50LiBUaGVyZWZvcmUsIG9uY2UgYWRkcl91cGRhdGUgaXMgc2V0LAo+IHRoZSBWRkUgbXVzdCBz
a2lwIHRoZSBpbml0aWFsIFJVUCBkdXJpbmcgc3RyZWFtLW9uLgo+Cj4gQWRkIGFkZHJfdXBkYXRl
IGhvb2tzIGFuZCBjYW1zc19hZGRyX3VwZGF0ZSwgYW5kIG1ha2UgY2Ftc3NfcmVnX3VwZGF0ZQo+
IGhhbmRsZSBhIG1pc3NpbmcgY2FsbGJhY2sgc2FmZWx5LiBUaGUgVkZFIGtlZXBzIGlzc3Vpbmcg
aXRzIGluaXRpYWwgUlVQCj4gZHVyaW5nIHN0cmVhbS1vbiBhbmQgYmVoYXZpb3IgaXMgdW5jaGFu
Z2VkIGlmIG51bGxpZnkgYWRkcl91cGRhdGUuIFRoZQo+IHNraXAgdGFrZXMgZWZmZWN0IG9uY2Ug
YSBnZW5lcmF0aW9uIHRoYXQgc2V0cyBhZGRyX3VwZGF0ZSBpcyBlbmFibGVkLgo+Cj4gU2lnbmVk
LW9mZi1ieTogSGFuZ3hpYW5nIE1hIDxoYW5neGlhbmcubWFAb3NzLnF1YWxjb21tLmNvbT4KClJl
dmlld2VkLWJ5OiBMb2ljIFBvdWxhaW4gPGxvaWMucG91bGFpbkBvc3MucXVhbGNvbW0uY29tPgoK
PiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQuaCB8
ICA4ICsrKysrKysrCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12
ZmUuYyAgfCAgOSArKysrKysrKy0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNz
L2NhbXNzLXZmZS5oICB8ICAzICsrKwo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ft
c3MvY2Ftc3MuYyAgICAgIHwgMTUgKysrKysrKysrKysrKystCj4gIGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5oICAgICAgfCAgMiArKwo+ICA1IGZpbGVzIGNoYW5nZWQs
IDM1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLWNzaWQuaCBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy1jc2lkLmgKPiBpbmRleCA1Mjk2YjEwZjZiYWMuLjJm
N2U1OTNkZWZlZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ft
c3MvY2Ftc3MtY3NpZC5oCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNz
L2NhbXNzLWNzaWQuaAo+IEBAIC0xMzcsNiArMTM3LDE0IEBAIHN0cnVjdCBjc2lkX2h3X29wcyB7
Cj4gICAgICAgICAgKiBAaXNfY2xlYXI6IEluZGljYXRlIGlmIGl0IGlzIGNsZWFyaW5nIHJlZyB1
cGRhdGUgb3Igc2V0dGluZyByZWcgdXBkYXRlCj4gICAgICAgICAgKi8KPiAgICAgICAgIHZvaWQg
KCpyZWdfdXBkYXRlKShzdHJ1Y3QgY3NpZF9kZXZpY2UgKmNzaWQsIGludCBwb3J0X2lkLCBib29s
IGlzX2NsZWFyKTsKPiArCj4gKyAgICAgICAvKgo+ICsgICAgICAgICogYWRkcl91cGRhdGUgLSBs
YXRjaCBidWZmZXIgYWRkcmVzcyB1cGRhdGUgdGhyb3VnaCBBVVAKPiArICAgICAgICAqIEBjc2lk
OiBDU0lEIGRldmljZQo+ICsgICAgICAgICogQHBvcnRfaWQ6IFBvcnQgaWQKPiArICAgICAgICAq
IEBpc19jbGVhcjogSW5kaWNhdGUgaWYgaXQgaXMgY2xlYXJpbmcgYWRkciB1cGRhdGUgb3Igc2V0
dGluZyBhZGRyIHVwZGF0ZQo+ICsgICAgICAgICovCj4gKyAgICAgICB2b2lkICgqYWRkcl91cGRh
dGUpKHN0cnVjdCBjc2lkX2RldmljZSAqY3NpZCwgaW50IHBvcnRfaWQsIGJvb2wgaXNfY2xlYXIp
Owo+ICB9Owo+Cj4gIHN0cnVjdCBjc2lkX3N1YmRldl9yZXNvdXJjZXMgewo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdmZlLmMgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdmZlLmMKPiBpbmRleCAyNjgwYTk5MTQ3
NjUuLjRmODg2N2RhZWE0YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fj
b20vY2Ftc3MvY2Ftc3MtdmZlLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20v
Y2Ftc3MvY2Ftc3MtdmZlLmMKPiBAQCAtNDg3LDYgKzQ4Nyw4IEBAIHZvaWQgdmZlX2J1Zl9kb25l
KHN0cnVjdCB2ZmVfZGV2aWNlICp2ZmUsIGludCB3bSkKPiAgICAgICAgICAgICAgICAgb3BzLT52
ZmVfd21fdXBkYXRlKHZmZSwgb3V0cHV0LT53bV9pZHhbMF0sCj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBvdXRwdXQtPmJ1ZltpbmRleF0tPmFkZHJbMF0sCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBsaW5lKTsKPiArICAgICAgICAgICAgICAgaWYgKG9w
cy0+YWRkcl91cGRhdGUpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgb3BzLT5hZGRyX3VwZGF0
ZSh2ZmUsIGxpbmUtPmlkKTsKPiAgICAgICAgICAgICAgICAgb3BzLT5yZWdfdXBkYXRlKHZmZSwg
bGluZS0+aWQpOwo+ICAgICAgICAgfSBlbHNlIHsKPiAgICAgICAgICAgICAgICAgb3V0cHV0LT5n
ZW4yLmFjdGl2ZV9udW0tLTsKPiBAQCAtNTI1LDYgKzUyNyw4IEBAIGludCB2ZmVfZW5hYmxlX291
dHB1dF92MihzdHJ1Y3QgdmZlX2xpbmUgKmxpbmUpCj4KPiAgICAgICAgIHNwaW5fbG9ja19pcnFz
YXZlKCZ2ZmUtPm91dHB1dF9sb2NrLCBmbGFncyk7Cj4KPiArICAgICAgIGlmIChvcHMtPmFkZHJf
dXBkYXRlX2NsZWFyKQo+ICsgICAgICAgICAgICAgICBvcHMtPmFkZHJfdXBkYXRlX2NsZWFyKHZm
ZSwgbGluZS0+aWQpOwo+ICAgICAgICAgb3BzLT5yZWdfdXBkYXRlX2NsZWFyKHZmZSwgbGluZS0+
aWQpOwo+Cj4gICAgICAgICBpZiAob3V0cHV0LT5zdGF0ZSA+IFZGRV9PVVRQVVRfUkVTRVJWRUQp
IHsKPiBAQCAtNTUyLDcgKzU1Niw4IEBAIGludCB2ZmVfZW5hYmxlX291dHB1dF92MihzdHJ1Y3Qg
dmZlX2xpbmUgKmxpbmUpCj4gICAgICAgICAgICAgICAgIG91dHB1dC0+Z2VuMi5hY3RpdmVfbnVt
Kys7Cj4gICAgICAgICAgICAgICAgIG9wcy0+dmZlX3dtX3VwZGF0ZSh2ZmUsIG91dHB1dC0+d21f
aWR4WzBdLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb3V0cHV0LT5idWZb
aV0tPmFkZHJbMF0sIGxpbmUpOwo+IC0gICAgICAgICAgICAgICBvcHMtPnJlZ191cGRhdGUodmZl
LCBsaW5lLT5pZCk7Cj4gKyAgICAgICAgICAgICAgIGlmICghb3BzLT5hZGRyX3VwZGF0ZSkKPiAr
ICAgICAgICAgICAgICAgICAgICAgICBvcHMtPnJlZ191cGRhdGUodmZlLCBsaW5lLT5pZCk7Cj4g
ICAgICAgICB9Cj4KPiAgICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnZmZS0+b3V0cHV0
X2xvY2ssIGZsYWdzKTsKPiBAQCAtNTg4LDYgKzU5Myw4IEBAIGludCB2ZmVfcXVldWVfYnVmZmVy
X3YyKHN0cnVjdCBjYW1zc192aWRlbyAqdmlkLAo+ICAgICAgICAgICAgICAgICBvdXRwdXQtPmJ1
ZltvdXRwdXQtPmdlbjIuYWN0aXZlX251bSsrXSA9IGJ1ZjsKPiAgICAgICAgICAgICAgICAgb3Bz
LT52ZmVfd21fdXBkYXRlKHZmZSwgb3V0cHV0LT53bV9pZHhbMF0sCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBidWYtPmFkZHJbMF0sIGxpbmUpOwo+ICsgICAgICAgICAgICAg
ICBpZiAob3BzLT5hZGRyX3VwZGF0ZSkKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHMtPmFk
ZHJfdXBkYXRlKHZmZSwgbGluZS0+aWQpOwo+ICAgICAgICAgICAgICAgICBvcHMtPnJlZ191cGRh
dGUodmZlLCBsaW5lLT5pZCk7Cj4gICAgICAgICB9IGVsc2Ugewo+ICAgICAgICAgICAgICAgICB2
ZmVfYnVmX2FkZF9wZW5kaW5nKG91dHB1dCwgYnVmKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXZmZS5oIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXZmZS5oCj4gaW5kZXggYWU5ZGFkMzUzYTM3Li44MzEyZTRj
OTFlOTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2Nh
bXNzLXZmZS5oCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNz
LXZmZS5oCj4gQEAgLTk5LDYgKzk5LDkgQEAgc3RydWN0IHZmZV9saW5lIHsKPiAgc3RydWN0IHZm
ZV9kZXZpY2U7Cj4KPiAgc3RydWN0IHZmZV9od19vcHMgewo+ICsgICAgICAgdm9pZCAoKmFkZHJf
dXBkYXRlKShzdHJ1Y3QgdmZlX2RldmljZSAqdmZlLCBlbnVtIHZmZV9saW5lX2lkIGxpbmVfaWQp
Owo+ICsgICAgICAgdm9pZCAoKmFkZHJfdXBkYXRlX2NsZWFyKShzdHJ1Y3QgdmZlX2RldmljZSAq
dmZlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIHZmZV9saW5lX2lk
IGxpbmVfaWQpOwo+ICAgICAgICAgdm9pZCAoKmVuYWJsZV9pcnEpKHN0cnVjdCB2ZmVfZGV2aWNl
ICp2ZmUpOwo+ICAgICAgICAgdm9pZCAoKmdsb2JhbF9yZXNldCkoc3RydWN0IHZmZV9kZXZpY2Ug
KnZmZSk7Cj4gICAgICAgICB1MzIgKCpod192ZXJzaW9uKShzdHJ1Y3QgdmZlX2RldmljZSAqdmZl
KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNz
LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYwo+IGluZGV4IGM1
NDE4NWM5M2E4YS4uYmU1OGEzOWY0YThiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9x
Y29tL2NhbXNzL2NhbXNzLmMKPiBAQCAtNTA0OSw3ICs1MDQ5LDIwIEBAIHZvaWQgY2Ftc3NfcmVn
X3VwZGF0ZShzdHJ1Y3QgY2Ftc3MgKmNhbXNzLCBpbnQgaHdfaWQsIGludCBwb3J0X2lkLCBib29s
IGlzX2NsZWFyCj4gICAgICAgICBpZiAoaHdfaWQgPCBjYW1zcy0+cmVzLT5jc2lkX251bSkgewo+
ICAgICAgICAgICAgICAgICBjc2lkID0gJmNhbXNzLT5jc2lkW2h3X2lkXTsKPgo+IC0gICAgICAg
ICAgICAgICBjc2lkLT5yZXMtPmh3X29wcy0+cmVnX3VwZGF0ZShjc2lkLCBwb3J0X2lkLCBpc19j
bGVhcik7Cj4gKyAgICAgICAgICAgICAgIGlmIChjc2lkLT5yZXMtPmh3X29wcy0+cmVnX3VwZGF0
ZSkKPiArICAgICAgICAgICAgICAgICAgICAgICBjc2lkLT5yZXMtPmh3X29wcy0+cmVnX3VwZGF0
ZShjc2lkLCBwb3J0X2lkLCBpc19jbGVhcik7Cj4gKyAgICAgICB9Cj4gK30KPiArCj4gK3ZvaWQg
Y2Ftc3NfYWRkcl91cGRhdGUoc3RydWN0IGNhbXNzICpjYW1zcywgaW50IGh3X2lkLCBpbnQgcG9y
dF9pZCwgYm9vbCBpc19jbGVhcikKPiArewo+ICsgICAgICAgc3RydWN0IGNzaWRfZGV2aWNlICpj
c2lkOwo+ICsKPiArICAgICAgIGlmIChod19pZCA8IGNhbXNzLT5yZXMtPmNzaWRfbnVtKSB7Cj4g
KyAgICAgICAgICAgICAgIGNzaWQgPSAmY2Ftc3MtPmNzaWRbaHdfaWRdOwo+ICsKPiArICAgICAg
ICAgICAgICAgaWYgKGNzaWQtPnJlcy0+aHdfb3BzLT5hZGRyX3VwZGF0ZSkKPiArICAgICAgICAg
ICAgICAgICAgICAgICBjc2lkLT5yZXMtPmh3X29wcy0+YWRkcl91cGRhdGUoY3NpZCwgcG9ydF9p
ZCwgaXNfY2xlYXIpOwo+ICAgICAgICAgfQo+ICB9Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3Fjb20vY2Ftc3MvY2Ftc3MuaAo+IGluZGV4IDdkYzJmZDlmMDNlMC4uNDMxYWZlYjM4MWFhIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5oCj4g
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmgKPiBAQCAtMTgy
LDUgKzE4Miw3IEBAIHZvaWQgY2Ftc3NfZGVsZXRlKHN0cnVjdCBjYW1zcyAqY2Ftc3MpOwo+ICB2
b2lkIGNhbXNzX2J1Zl9kb25lKHN0cnVjdCBjYW1zcyAqY2Ftc3MsIGludCBod19pZCwgaW50IHBv
cnRfaWQpOwo+ICB2b2lkIGNhbXNzX3JlZ191cGRhdGUoc3RydWN0IGNhbXNzICpjYW1zcywgaW50
IGh3X2lkLAo+ICAgICAgICAgICAgICAgICAgICAgICBpbnQgcG9ydF9pZCwgYm9vbCBpc19jbGVh
cik7Cj4gK3ZvaWQgY2Ftc3NfYWRkcl91cGRhdGUoc3RydWN0IGNhbXNzICpjYW1zcywgaW50IGh3
X2lkLAo+ICsgICAgICAgICAgICAgICAgICAgICAgaW50IHBvcnRfaWQsIGJvb2wgaXNfY2xlYXIp
Owo+Cj4gICNlbmRpZiAvKiBRQ19NU01fQ0FNU1NfSCAqLwo+Cj4gLS0KPiAyLjM0LjEKPgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
