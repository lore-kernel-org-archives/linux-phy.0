Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F597C624DE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 12:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbWOJH/ffSkkTgUtcmU8rXjUoip+MIx++PNWe0oy3+U=; b=SzF//bkXLKMsfD
	s8bGUPB5LjiKC/HZFZDRhpeeZM/7ICVKPDzZ9XHmobIb+THEkfjMK0VYUHlwcupoaLAdtTtKnAhUn
	A//MSd3F+PudHQoUTDRuT2CPBCwUc2JFB8uLKnebg9Qek/qVm5jPF7lfCe8HUnbrsy1hPMMeCOKE8
	1U2PSO47Lu24sxAJ91wuC+j3K58eKxI4b3c7EeujjxOeOhhZlwohAxE3kvmIO+B0Ge+VYUHxplYQC
	x86AGtULsxhHSeMJaulxeuV+QSXzLK6k47vM41J+Wo22Zs6xI2FG9kn8cppX0t5J6fVjdc/M+hWKy
	iTE142/ImOKZPQVvOvUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TCZ-000000023QW-2xvV;
	Fri, 04 Sep 2026 12:39:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TCY-000000023Q4-07OU
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 12:39:27 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 684AICIs2755880
	for <linux-phy@lists.infradead.org>; Fri, 4 Sep 2026 12:39:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G64/bNzWu0MVWc4hGb1QXCkMcnWhjiEk88kN6xUqbpE=; b=K0XJ4tXGEidqOsXZ
	b032oR5V1rqvQce0EcA9gAHTKUvpdP1vfUI2NvqJy9w/gP6XHjbadQgX9dOh+sH2
	U0udof4CD8CAWQvCHepl4wCV5X3ApQBfEkUitnWsclRsnOxoVB+V5GMzJ++6e2Re
	3mQUMOjyswcZbavDWSMq4x329nxo9nfG2K4bI5NTW7pUROmGarJHDQX5Yx6XXn7A
	hGQSNZhHyd7cmP+Qf4qbuxe1qskxzB/YsHswpsfOspQ1rDXbM/FcVJ62NSaVpeAJ
	azWw3CIV/wasFEdMSeRe759zAFUe/X8vfVoeVM2jXo/U5ZMfaNS//ACUzGzVRc9P
	rLTDZQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gfk92253k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 12:39:24 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-52f64c48bf2so20736261cf.0
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 05:39:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788525563; cv=none;
        d=google.com; s=arc-20260327;
        b=pavwhG2ckSdb3oMbpFpXwcbpmhZOuHZtCxvDb2AtVJOmzQTJbIlw5E7l6UQuhxtjut
         lEiEmDzq7ujmFOsijBpSGf+tZmaM6dO7fQhcKzKEAqfJt9n3kYGMsJgCyhMHMCn7Cg5X
         R2LnwrIpVf3+RnaYwiEWaDccGMVtx91vy5kC6iXIFYph8W24/qOgqhabRJZ6rXSmo0fA
         bbFriwMdwRIrp8+JDBrb/vBilRulerKZ71t8Otc7FFokskYDQVJ5H2sLIQLyPCNqY1QD
         ZukLEjwDAD05JHCzjpOWzVia+qEWETMl23vIaYbeKDaAMaiJUII1PIFwJrapOQh+Sw1x
         HoRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=G64/bNzWu0MVWc4hGb1QXCkMcnWhjiEk88kN6xUqbpE=;
        fh=mk+AIq1SSqNQFlNvicBQ8PIURpwWLTL2wGxVfG0pQxs=;
        b=bLHHIrCMYYJTzDpY//A/gn0BsTWc0Ag8WeExvOpBaHxtjZsqh1obGGpFdFXbNwEwtA
         /mE2hyuhGmgTFWuB+UE+GXZwsB6Z7Y47X7wqLDauapUoMVIMRJ7fF7S1hT2mRg0+XqES
         RIpGmbY8InKLu+hpHULYMQbdrTGpts+Xs+B2stLNzo7ud1Eg63Npw90NLaCEqBBIkD7H
         +G09a+SfL3zKDoMBL6kGZoYHXi9RTA7cdLCMoEOJZX7gvW9f194cC4kn+1sM7gYaFvme
         lR6/XQKnNcj3nufoiVZLgcWmdoBh4VHIi0Gd788FFDmzKcaV3agLdgqp0wfCyS3c/Bwm
         KG2g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788525563; x=1789130363; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=G64/bNzWu0MVWc4hGb1QXCkMcnWhjiEk88kN6xUqbpE=;
        b=JhVwm0hPeKZzjqkz7XJ1XjbO/giUNpPfWqydzdShR4v3xE95Kt6+ozFn098cnb32LE
         4VbSZG21tMf7xHKQOZRdGzPW+XCz4g8uiwWvv/xd+zj4aaIHcqOrHCzwzvCTu53QzcK6
         Vofj4VVlXIDQDttjyPZd7n3NKvJWMzjvn4QIFuEl3pxeMwOO+vwoLh/Tm45R8hRMCAuY
         5Gzk/Bk9s3cTAlcY+DFW2H+4rTlwIPUPec6L/qH390fIiJVtPwj5qLjJvL26Jn+664Vk
         NdeWlmGseDhnXec6Grio6F6V+2pnC2woslAy+Ybygj6MzWs268MgUZCmfxrAOtLJEy0F
         eRLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788525563; x=1789130363;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=G64/bNzWu0MVWc4hGb1QXCkMcnWhjiEk88kN6xUqbpE=;
        b=eh5GBvP6+0rhdQay3+IO+DdK4mS8G7BFLcZB2NYWcOLua+0sx7sHS54pCzLhX2nMbD
         N9kh3rNlUfYLq9Ph0vVVi/AVTi9TXKsk105rh28WG6eaMOqIb+60PAeQZCQouEZoTAZQ
         QLP3lqb6ei3XnEchfnoP7IUi3DUmelYBOEMAaaLlrREtxpxP80VfQll0OExvWv+PYzx7
         IJMt2Gbck6JyeWhVffEoGNUzjVUqug3QBIC6OuSb3RcWphLSkhSjDssZgeyXv53l4v8J
         K3omujx8Yooi0SKD2uT1ZpQfNfg5MviPndisa1VvWZ4hc+lYFNp4VurasXJPYAof3/Zn
         ty7A==
X-Forwarded-Encrypted: i=1; AKwUvBxRX+Sm1vzvbl57G5TIoXVngNMhMXpEHeblLDXGs6KHawtDkf0OAYognxuQ7LXFkx7OHuB+8YdmnuY=@lists.infradead.org
X-Gm-Message-State: AFuF++mgmD4tOUbVuDqGxIyZ6AB8PfqQGezoI82XZPQm+xlX130waXsg
	b3yy4dWWpf/rVOpKtxWlFmt/XU+oemzuc+3dZNiDGrBX7kI8LaHbQS06n72e5kZRpL3SGLTRjmu
	PpeaEi5QJ+dXrjy5C536m+JDIj7ZkD8LotLhZmLt5ZGnsVAISEat7VJ9QzOEwbzhKLJTms59GjJ
	7NgWve/8pq3QD4YAq8ghTm11rR7SKMTN5irCJFTniT4Q0=
X-Gm-Gg: AYBFou0mB82boBe/95FUaV97SF4+UaZd41i9S5Wa17K0kDknyQFbZckVHjbhWyBTE3k
	K6NUZZkVDPvh7ZssuH0FlkVB/QbpO6ns+b884KNluKYVO5FLxlfEuYF+/SCKC51mpbbtdG+IWyK
	rj4xYUf9uKzeZiP79Ti+fPDrS9MbZYfQvG8HsHNgM+8j3phRvk0qy7fGv6gBW8P7aMO3hMCaekW
	Ubo2WxPx9bPDtJsm/7M3s8XbmZKm78dAHdwq8HUO0b21KuJDf5FhUeqLRHUUjEkoHaVk+eHqI/Z
X-Received: by 2002:a05:622a:286:b0:51c:1fd1:e755 with SMTP id d75a77b69052e-530549fd6c2mr61921351cf.36.1788525563484;
        Fri, 04 Sep 2026 05:39:23 -0700 (PDT)
X-Received: by 2002:a05:622a:286:b0:51c:1fd1:e755 with SMTP id
 d75a77b69052e-530549fd6c2mr61915361cf.36.1788525558050; Fri, 04 Sep 2026
 05:39:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-0-01ef1eced075@linaro.org>
 <20260903-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v14-1-01ef1eced075@linaro.org>
 <2aXo5I_5YqQ6uikqbIOWs7L__EwJV2oTs24Jqa-YRqGIU2FOT1O4bixGBbTzbaiBuENyW0XkWbqAJJQnxgSnWQ==@protonmail.internalid>
 <CAFEp6-2nWfjF18R9pw0xFt92GcPORKKa+ix8czQ=m512TYuP8Q@mail.gmail.com> <51b3dd1a-5595-4538-b792-a679b6813a6f@kernel.org>
In-Reply-To: <51b3dd1a-5595-4538-b792-a679b6813a6f@kernel.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 4 Sep 2026 14:39:04 +0200
X-Gm-Features: AcwNN1Xi0ZnbHcNu1xFGVtcHdZiZF7hrQekcNJq1YSDgANQhTlSn5NmxIbSBScw
Message-ID: <CAFEp6-2_XTMnxqcoNFwu=BfWki2U7U=iuQL8n6QcR-CZSMsX-Q@mail.gmail.com>
Subject: Re: [PATCH v14 1/4] phy: core: Fix use-after-free in phy_get paths
To: "Bryan O'Donoghue" <bod@kernel.org>
Cc: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Felipe Balbi <balbi@ti.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
        stable@vger.kernel.org
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA0MDExNCBTYWx0ZWRfX5StqTK11fuBp
 kJxIpmfpJMjxlc6N6CIlYDFAVtVGFNBtSrDYa9XF8qHdN6wPW523UiHgqcIMDiekjMvoBvKDfs8
 DJ9zeIVI7++HGdmXnMAGR1F2YaA8/wAjRo12yXEU4CTbL1fvIGPhk21Z9L76HDUJj6Qdnc+aLTH
 exSbXkV+aO1TCoV/q+LHhom2bJj1C7x3yVBRYcSZTHYL+Sy+3Fq8+JwTqX1/6ubTY6oavHVXdm5
 YnneWuy5kiSUAJEsGbm2mluJ2zVsLaZhScaclmUjwer7Vn4P8Y5cYORX+jQNpa44fyZglf/xhss
 A05IZkaOMRUNLPDNFOiau+/MemzM/Qs8WzWBUTjKx0zTts/tGOjP2RFiJzSGbdizsfcVIFixRL0
 mjSyGgnttUMHtR3oAXro4nxZJx8mJgG/uWzCsyoPEUyGHLk7Ih5XKV4nsbY7J2I3+GJOhOWO86W
 rGHrv7QtarAl/qnqz9w==
X-Authority-Analysis: v=2.4 cv=Oc2oyBTY c=1 sm=1 tr=0 ts=6a9abbfc cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8 a=4B6qI-Qak-9ifnyKK3wA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: oaodOxUyPiq6Wdj3fAI3ia9_beXwW7IO
X-Proofpoint-GUID: oaodOxUyPiq6Wdj3fAI3ia9_beXwW7IO
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA0MDExNCBTYWx0ZWRfX8spFztdl64Rd
 9c4yHJ8wjeZv1tlkc4KXEfAaUYsgyQn950q1wCU0f5pKuzj6rtX0XtCiTlGnKcfiV1E6zR7ghA1
 MpDgz18RKuSZY6Y1QGaj6ZjWuPhDlvA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-04_03,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609040114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_053926_093820_301FE13D 
X-CRM114-Status: GOOD (  13.46  )
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

T24gRnJpLCBTZXAgNCwgMjAyNiBhdCAxMTo0MeKAr0FNIEJyeWFuIE8nRG9ub2dodWUgPGJvZEBr
ZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDA0LzA5LzIwMjYgMDg6NDUsIExvaWMgUG91bGFpbiB3
cm90ZToKPiA+PiAtICAgICAgIG11dGV4X2xvY2soJnBoeV9wcm92aWRlcl9tdXRleCk7Cj4gPiBU
aGVuLCBub3cgd2UncmUgbW92aW5nIHRoZSByZXNwb25zaWJpbGl0eSB0byB0aGUgY2FsbGVycywg
bWF5YmUgd2Ugc2hvdWxkIGhhdmU6Cj4gPiAgICAgIGxvY2tkZXBfYXNzZXJ0X2hlbGQoJnBoeV9w
cm92aWRlcl9tdXRleCkKPgo+IEFuIExMTSBzdWdnZXN0ZWQgdGhlIHNhbWUgdGhpbmcgdG8gbWUg
YnV0LCBJIHRob3VnaHQgdGhlIHJlc3VsdGluZyBwYXRjaAo+ICJsb29rZWQgbWVzc3kiLgo+Cj4g
RG8geW91IHdhbnQgaXQgYWRkZWQsIGl0cyBvbmx5IHRocmVlIGFkZGl0aW9uYWwgY2FsbHNpdGVz
LgoKSXQncyBvbmx5IGEgbWlub3Igc3VnZ2VzdGlvbiwgYnV0IGlmIHlvdSBlbmQgdXAgc3VibWl0
dGluZyBhIG5ldwp2ZXJzaW9uLCBpdCBtaWdodCBiZSB3b3J0aCBpbmNsdWRpbmcuCgpJIHdvdWxk
IGFsc28gcHJvYmFibHkgdXNlIGEgc2NvcGVkL2d1YXJkZWQgbG9ja2luZyBwYXR0ZXJuIGZvciB0
aGUKbXV0ZXgsIGFzIGl0IHRlbmRzIHRvIHNpbXBsaWZ5IHRoZSBlcnJvciBwYXRocy4gVGhhdCBz
YWlkLCBpdCdzIG1vc3RseQphIG1hdHRlciBvZiBwZXJzb25hbCBwcmVmZXJlbmNlLCBhbmQgc29t
ZSBtYWludGFpbmVycyBwcmVmZXIgZXhwbGljaXQKbG9jay91bmxvY2sgcGFpcnMgZm9yIGNsYXJp
dHkuCgpSZWdhcmRzLApMb2ljCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
