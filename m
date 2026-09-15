Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3B6DC88E53
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 12:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBy0M4iYot+eKZ/FfnFyqAGbyZ4FuyNpIHwjWMVXaCU=; b=rxhFLX3yVZcjxk
	IXKTkOp5WA4vEFGl/hl5uy8N9r24VhcI7K0cBiwl+P0gEUtZDqi3oix3DooR4KnpTIeDqUfxslqpz
	XlsxsOdcmGPiyfGa1Lkp/N/AjaURCsu6ddcV9z47UTwbZoZunN5MnfuMpW9sLxiEWCuyA80o7hltw
	4ZP0XOqbB1Q+BCr6yHb2gNKI5Qz0H+PHEIfP2HGXXdkuSp9MQZ93v0w9mPYNLC5YuWkdaI/Fxem4w
	n0yEKEzKCHEDZ7dthmZCr3Z2STvMgFBVfdrlS9qGQCGzxJTEQUiB4ZtGuxMVXREl4pYQ4aiVOxw9R
	FOY5Wck0CFe9xx2K/vmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SlR-00000006dgw-2QOr;
	Tue, 15 Sep 2026 12:59:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SlO-00000006dgK-2ucs
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 12:59:55 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68FCxsMN3862618
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 12:59:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T8M8fHv7jJKzUDotCI9JtXtNdmLtib1ArSAhx+AXE1Q=; b=Jj0o3g7VHs529msO
	s4GUSHT7/qFtDNIpVy23u7/aBez6cIjA5NnWpG4ItziwxuLr5TPEEqO5dx8czYP1
	aUt3hJX8dechE2d7fj0C9k5p/pORyPy+NoR76Yl65bHkhnZVZcPEnEu/W6OLkbGV
	1fmf2PQLZFlBgXyDpnaegKzS7vTK834D6HgG2fwwZWsPWjygqMkMVstg8MSCCqEh
	Utpa743q2pTi3u+MKRFbJOn8lUtt1VSEb4oAE0pTqle3ukLiS/krPe6dYe6GUcOL
	OuQzx6z2sXTAzVJggHt+R4c8u7mFRfnscLahNDaZiSWXscLgBeUxEIB7QTWq3AlY
	braKFQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gq3hc10mr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 12:59:53 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-9104215fbdbso128396856d6.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 05:59:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789477182; cv=none;
        d=google.com; s=arc-20260327;
        b=bKAIfKeZcaKFxeAh0lKbUirjCfH/Qlsr9r7CjGQyNdPzdFBF8TdE/25PIEUibIpIR7
         FJTzj25/fSKHhtIAXiLIJNXjHhwuhr6Yd0Vn5tBvK4MwFmwSrbBerAe/7sd/a0ttjluY
         y9uQU8DRlbL0Ihb7zRfXJDbW1w3IXyr8c7R3NX6Fc7H3iL4U2svlwFd0dnPHk7p+mTIl
         DWwGG0zVk+nFogo7+0QVJmoz2EPV+jWag+wInGvWUouBnq8nPbY21Yt2M6nnS63b59R3
         uSClsr2MO2CO+S23yrtLj5guidIheue+Dk8egzGg6IM8SSawJCPbVyYwFrenygpoTaMe
         QqDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=T8M8fHv7jJKzUDotCI9JtXtNdmLtib1ArSAhx+AXE1Q=;
        fh=jeLJeuAayTaB06jtS/Lnp5+xEng8eMRt22bLO+MiMfU=;
        b=gFOLq2pUYJPF4gXC/4NYtPiIfBZcFQ/SzU2qqQcBqPHYYEx50XvOQ1umTv7yuWkGfn
         U975/WiiZiEfDKr6ZgpQA6UmEsrCr/l9IYfmbdg6etJ8EazzWO/2JJ9YAHdKwOE9weBp
         uKxXzKY1HK00dEVHbeFvZfQw4TOwRZWvBjn0Yi5FbDtVEaDfiF2LYkurKhgD2v2UQGM0
         7vRLX+6mL66SmtQIrrZyrX8qh3Yz03MGnwYcASc541gVeRT84PY3brjtT9KjyAH5z53p
         6kfUpWD+l4OLeKY1aPGHtT3uHBMA9dKyNmyWbe44nxFcha4artOnvcG8xnEPXpM1Eq40
         BeTQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789477182; x=1790081982; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=T8M8fHv7jJKzUDotCI9JtXtNdmLtib1ArSAhx+AXE1Q=;
        b=HSoA8LIt5zv36Gh5q++91L0HBYF69lSCOmtcmNg9xdxjqV4DM/KLdReB1Qyc6NFjwJ
         ol3w0385WUBwV1C/CLUjG7BG3acOUgi/QfNdciBPhAyHkMlfiE89NT1fnIqkut10mVXu
         cobCEB4OkLNpaThZgzuQmutjVVCZIptHGkHIERswPmDXp++XGG+3e4SKCz60Me7lIFxn
         oFMesejKn7C32WN2l+8riKrjDNs3+OEXFjX9gQKrxbkqF6a2cGoI4g1AwglJoaW1uy+W
         8wysuoWOrFCk1CXj96o9AP9hQA8fgoHOmnLL0GOWg5oy1mtNwV1RxbSrNDs+Knz4Ri9h
         U1Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789477182; x=1790081982;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=T8M8fHv7jJKzUDotCI9JtXtNdmLtib1ArSAhx+AXE1Q=;
        b=1w1LpX5ChebeGjeIxmnUUBre1qPwWvqCh0vfUF38gZyPZZ3HwjgTywMao8gc9WpVPh
         1d5ztSZgavXYpkh8jo0jCLrWdXDK+JUrejcrYfN9qbShWduTPuTnQWvlYD3WtuH/QHwr
         qpl9n5SYB83xpCvA5DtwRvajIwg94ZPPL2stoaXfel48DYjS335IBzRxhgLHnY2BOq1D
         FHHUyotK0TlAgm7DTR4xyL/M/ipIHO3xHN7GysdJ60cIt8X2H/WuBQn/m90MdyxaxQdp
         AAgAoW8eyx7dUQeTgcliXkasglUhgc0M2NBf9Dof2QJwqrAyHsJf1FgDRDOx9LIq6pll
         owig==
X-Forwarded-Encrypted: i=1; AKwUvBy3dZCLILRaQKgBW9p3fryb3YSOoNTbcLmcsScCRX80r0qkewbLD8AIOsPvQYWi3o3566dkXjy4yco=@lists.infradead.org
X-Gm-Message-State: AFuF++netoFYavSNCTcuyu8+tB/0uSv5zCIwFq3XHqehqzkTFM3pZjfu
	3zMHRlLSzoe9ULjeWZIMgzxq4Zshv7XHKx89Oaax8K9Lss9kGZsy0drLaj19WuuPy4izqouCgvp
	Te8L74odcfzif8TkN/Xi1ItPRcMjNNPLEv3XgMxd6kR7SykXhm7NeDNYmpDs23P76v06pR2oX5w
	c+QjHbzhfPwhvohH4JTq9BEz2kqLwptJ+JgZpB05my6sU=
X-Gm-Gg: AYBFou0cn3ouiezd5uBR5qj3hk3EcRHaeitYeM28K579AZAfPaQXFVGkyLZsQZXplXt
	1NM8RpWrjvSdT4DmgZ+81S4vwXDOZs30r4ARkoULirtFWM9n2rj/ssSw6w1ePPdcvFQ2Otr95af
	Ab4ZRo8nkeZ9YzGie0AtvjdhCp+JOz3zcxsN7nlEBxd0PBXqUe9g1x8agU2EsrRZ5L7P4v8SglJ
	4DeYYeud15qYknjtHGH3VS5xpIWSR3Ee0QHowqKJieCFireqcq/eOiaekzqJXqANNUVnQ6Moxvy
	jXZxx+gdqmiuRwDPdP7avrfI90kL
X-Received: by 2002:a05:620a:2707:b0:939:d675:f166 with SMTP id af79cd13be357-93a29bb3b5cmr992161785a.48.1789477181806;
        Tue, 15 Sep 2026 05:59:41 -0700 (PDT)
X-Received: by 2002:a05:620a:2707:b0:939:d675:f166 with SMTP id
 af79cd13be357-93a29bb3b5cmr992156585a.48.1789477181359; Tue, 15 Sep 2026
 05:59:41 -0700 (PDT)
MIME-Version: 1.0
References: <20260915-kaanapali-camss-v16-0-c9f3f6f4180c@oss.qualcomm.com> <20260915-kaanapali-camss-v16-3-c9f3f6f4180c@oss.qualcomm.com>
In-Reply-To: <20260915-kaanapali-camss-v16-3-c9f3f6f4180c@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 15 Sep 2026 14:59:28 +0200
X-Gm-Features: AcwNN1U5ctkEm4DwFkBSfEfQg9_gGH1ZHa_iPM8quhRMcHD1Qgxe4V5aAf56VIY
Message-ID: <CAFEp6-3wmGA77cKaOgDUxsFSFaa_q4StNkVPrz23jN8r2HaF1w@mail.gmail.com>
Subject: Re: [PATCH v16 03/11] media: qcom: camss: Add Kaanapali compatible
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
X-Proofpoint-ORIG-GUID: AnGtwUnxDLASBSdWcZXKHxVx6KBbRt6D
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE1MDE4OSBTYWx0ZWRfX3xMZgo6H6+UA
 rHeUA1N1WPFaxU0sV9z6RIYRQdZsFDUz0/jc9iuGWKOjnEm6dv+f0g+JoVMk8JZ29qUrmT5nGMr
 e53+i+zu3rOvxM0iU9I4X6yWzSt76Mg=
X-Authority-Analysis: v=2.4 cv=dcUVTnXe c=1 sm=1 tr=0 ts=6aa94149 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=DkjGjKK6HQ8r0z3qK2QA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE1MDE4OSBTYWx0ZWRfX4htX0/pKpsSl
 +plEdaerpE2tXlQp8Rac5GoYBppBAF/9rskqEbGD0X8guQrQbXVX2FSgy6/NlRUMxMSvwvLqji5
 nQJMUmtvdN7faEFuTtE1305rFXnw98R6H8cMhNrJPlzBnN4gn1Y5qRJ8gx48z1AXPFEJOplpILt
 xT0yXt0KyI0JX4itZs3UNIdlVnoQ8GZWuCNVvC7pW1/6l63uO1pzLBp7+R3e6ARLfY/WZETv1Sh
 06btKyNtw3QpvVCmFCX8nBaoSxmy4SwRm6kC5rDsqOtiUcAhr0DxTd0WISKXU+XRm4wAzQjIpCo
 Xn0vDVFBQ30JHaNB30bjdKdW0158FUE1ezzckGm89XfC3fZ8ONaqaA4GeRXEeDDVMGwigudjExN
 ffMn5QMHS2vRH9KVqiaQMW8OGHNH95jAWuR3+HSLBhZh9rmkbr0UrW6tO9zjIZsappyNorIQaeV
 HaVuaKaPmp34X3DouXg==
X-Proofpoint-GUID: AnGtwUnxDLASBSdWcZXKHxVx6KBbRt6D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_04,2026-09-14_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 malwarescore=0 phishscore=0
 suspectscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609150189
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_055954_756844_4BEA3251 
X-CRM114-Status: GOOD (  20.32  )
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMTI6MTDigK9QTSBIYW5neGlhbmcgTWEKPGhhbmd4aWFu
Zy5tYUBvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPgo+IEFkZCBDQU1TU19LQUFOQVBBTEkgZW51
bSwgS2FhbmFwYWxpIGNvbXBhdGlibGUgYW5kIEthYW5hcGFsaSBDQU1TUyBkcml2ZXIKPiBwcml2
YXRlIGRhdGEsIHRoZSBwcml2YXRlIGRhdGEganVzdCBpbmNsdWRlIHNvbWUgYmFzaWMgaW5mb3Jt
YXRpb24KPiBub3csIGxhdGVyIGNoYW5nZXMgd2lsbCBlbnVtZXJhdGUgd2l0aCBDU0lQSFksIFRQ
RywgQ1NJRCBhbmQgVkZFCj4gcmVzb3VyY2VzLgo+Cj4gUmV2aWV3ZWQtYnk6IEJyeWFuIE8nRG9u
b2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IEhhbmd4
aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTogTG9p
YyBQb3VsYWluIDxsb2ljLnBvdWxhaW5Ab3NzLnF1YWxjb21tLmNvbT4KCgo+IC0tLQo+ICBkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYyB8IDIyICsrKysrKysrKysrKysr
KysrKysrKysKPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmggfCAg
MSArCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jIGIvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmMKPiBpbmRleCAwN2IzY2RkY2E1ODQuLjJjOWYw
MmJjYTgwOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3Mv
Y2Ftc3MuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5j
Cj4gQEAgLTM0LDYgKzM0LDIwIEBACj4KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBwYXJlbnRfZGV2
X29wcyB2ZmVfcGFyZW50X2Rldl9vcHM7Cj4KPiArc3RhdGljIGNvbnN0IHN0cnVjdCByZXNvdXJj
ZXNfaWNjIGljY19yZXNfa2FhbmFwYWxpW10gPSB7Cj4gKyAgICAgICB7Cj4gKyAgICAgICAgICAg
ICAgIC5uYW1lID0gImFoYiIsCj4gKyAgICAgICAgICAgICAgIC5pY2NfYndfdGJsLmF2ZyA9IDE1
MDAwMCwKPiArICAgICAgICAgICAgICAgLmljY19id190YmwucGVhayA9IDMwMDAwMCwKPiArICAg
ICAgIH0sCj4gKyAgICAgICAvKiBCYXNlZCBvbiA0MDk2IHggMzA3MiAzMCBGUFMgMjQ5NiBNYnBz
IG1vZGUgKi8KPiArICAgICAgIHsKPiArICAgICAgICAgICAgICAgLm5hbWUgPSAiaGZfbW5vYyIs
Cj4gKyAgICAgICAgICAgICAgIC5pY2NfYndfdGJsLmF2ZyA9IDQ3MTg2MCwKPiArICAgICAgICAg
ICAgICAgLmljY19id190YmwucGVhayA9IDkyNTg1NywKPiArICAgICAgIH0KPiArfTsKPiArCj4g
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgY2Ftc3Nfc3ViZGV2X3Jlc291cmNlcyBjc2lwaHlfcmVzXzh4
MTZbXSA9IHsKPiAgICAgICAgIC8qIENTSVBIWTAgKi8KPiAgICAgICAgIHsKPiBAQCAtNTU5Niw2
ICs1NjEwLDEzIEBAIHN0YXRpYyB2b2lkIGNhbXNzX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ICAgICAgICAgY2Ftc3NfZ2VucGRfY2xlYW51cChjYW1zcyk7Cj4gIH0KPgo+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IGNhbXNzX3Jlc291cmNlcyBrYWFuYXBhbGlfcmVzb3VyY2Vz
ID0gewo+ICsgICAgICAgLnZlcnNpb24gPSBDQU1TU19LQUFOQVBBTEksCj4gKyAgICAgICAucGRf
bmFtZSA9ICJ0b3AiLAo+ICsgICAgICAgLmljY19yZXMgPSBpY2NfcmVzX2thYW5hcGFsaSwKPiAr
ICAgICAgIC5pY2NfcGF0aF9udW0gPSBBUlJBWV9TSVpFKGljY19yZXNfa2FhbmFwYWxpKSwKPiAr
fTsKPiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY2Ftc3NfcmVzb3VyY2VzIG1zbTg5MTZfcmVz
b3VyY2VzID0gewo+ICAgICAgICAgLnZlcnNpb24gPSBDQU1TU184eDE2LAo+ICAgICAgICAgLmNz
aXBoeV9yZXMgPSBjc2lwaHlfcmVzXzh4MTYsCj4gQEAgLTU4MjksNiArNTg1MCw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgY2Ftc3NfcmVzb3VyY2VzIHgxZTgwMTAwX3Jlc291cmNlcyA9IHsKPiAg
fTsKPgo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBjYW1zc19kdF9tYXRjaFtd
ID0gewo+ICsgICAgICAgeyAuY29tcGF0aWJsZSA9ICJxY29tLGthYW5hcGFsaS1jYW1zcyIsIC5k
YXRhID0gJmthYW5hcGFsaV9yZXNvdXJjZXMgfSwKPiAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAi
cWNvbSxtc204OTE2LWNhbXNzIiwgLmRhdGEgPSAmbXNtODkxNl9yZXNvdXJjZXMgfSwKPiAgICAg
ICAgIHsgLmNvbXBhdGlibGUgPSAicWNvbSxtc204OTM5LWNhbXNzIiwgLmRhdGEgPSAmbXNtODkz
OV9yZXNvdXJjZXMgfSwKPiAgICAgICAgIHsgLmNvbXBhdGlibGUgPSAicWNvbSxtc204OTUzLWNh
bXNzIiwgLmRhdGEgPSAmbXNtODk1M19yZXNvdXJjZXMgfSwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmggYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3Fjb20vY2Ftc3MvY2Ftc3MuaAo+IGluZGV4IGJhM2Q1MWQ5YzBiZi4uZmFkYmE1N2M1ZWZh
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5o
Cj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLmgKPiBAQCAt
OTYsNiArOTYsNyBAQCBlbnVtIGNhbXNzX3ZlcnNpb24gewo+ICAgICAgICAgQ0FNU1NfODU1MCwK
PiAgICAgICAgIENBTVNTXzg2NTAsCj4gICAgICAgICBDQU1TU184Nzc1UCwKPiArICAgICAgIENB
TVNTX0tBQU5BUEFMSSwKPiAgICAgICAgIENBTVNTX1gxRTgwMTAwLAo+ICB9Owo+Cj4KPiAtLQo+
IDIuMzQuMQo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
