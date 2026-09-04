Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FFFDC61DD6
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 12:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zje2gpXR55ptyf5LzEbiXRFuF2f1whD/0/foyKRRZ8A=; b=AzJqZhSHTTzoaE
	ee8+UmWKk7/3AfLzZObitg3Kl5baUFFPrxdeM3laRNGrotxtwoXi6mLh+23+AezPNB6cLSbnJEid6
	KAe1vgOHQlcfsqixoFqJsh8KhmB0Sz0gJWhpE8CsbpUScWO5mqu3g03HqYr7l7NJYNBacO7Xu7zN9
	J7eB+D9yb9y7tWrbRHN6rJ31DjGk6XCVOemgLKepdErtGA3MHK97EXmPLiyK9wxOhHggAcsh7aNsR
	pgUgKw+d4kpGYgKgSfQjbnh0DpsLdVytkY4TRm0gGaqQZAW8eeTEAf0DIDF1g0JQC3ls5wc0ES5aO
	DtXFnzYwqMEuIhFNCKlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TDg-000000023au-3UuP;
	Fri, 04 Sep 2026 12:40:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TDe-000000023a8-1LRp
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 12:40:35 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 684AIxKW3784398
	for <linux-phy@lists.infradead.org>; Fri, 4 Sep 2026 12:40:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j0+GeMl6zOe/BFRxRXazQ5C0aLdugDFg6DqX1FNOkk0=; b=a+XeAnzcyW2zl6jE
	UY3r8ydj+u+BsEl/DKXlOKXvLl/iAfayC+PwBPzqTLuYa5rmvdHqY293PJK9tWWd
	Glyf15PS/3SszWklDQ3g+ELtYfYXfUVk3dZZfPAzo0oMfPHz92AHb52eDEpjBApn
	LkSLbb7k1ZZIJm4/21qWDRB0L9ZarRTzsJ5m2NDSNbrC4GuYFQOlVmSZ5UdDtyyu
	3uxC7uR4ICIKvU3kWlmQXAVmjJm0vPKaE7P0naEJ8qhUMoc2aF9rUUG4B0lgLfPp
	xzwBwJJk7QmMeDCqU75FBLiEsPqWUdwG7cjnm8kKMXHpWsIKjQfXp0/fDTM52aDs
	Iz6whg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gfhc9tmt4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 12:40:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-930edb4362dso151315485a.3
        for <linux-phy@lists.infradead.org>; Fri, 04 Sep 2026 05:40:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788525633; cv=none;
        d=google.com; s=arc-20260327;
        b=m7GWcYNLvJvazTzFq8WgdXJEEArMvCWWpjU+NnkjlSu2/1/4QiUJh7xI1S+2eJROzv
         A4iFfIp8WU97ScCleUHAGlZT9ctbDMEM8wbz+BwAEHn/awuO2HD6R738M6s/RK0qhDuP
         UlmhJ1jADNEGadoxnrO5Zd3FxS4aaXS5E3CzEGWQXpKfUzi+Qu+3Lc+vgKQE7NV5mbaA
         DT2cOyKevviIAdVFLQCm7AgZ11i98/5dMVC4llNfqiM5Qkdq4zne2Rc9kFczBcB4FcGj
         UXoN+ysgvCXOJJKt2+HOdZIeFXc9KviCYYZPxKF58a9e1+Wk87QIkP6r+UoI2fw7snKX
         aQgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=j0+GeMl6zOe/BFRxRXazQ5C0aLdugDFg6DqX1FNOkk0=;
        fh=qO2N/IftO8KXSWwaCCDrISm6EDuZX4GtsI+a8LZduOQ=;
        b=aTOXb8DvfQUoEuZUHTJVWaf06BFBsXZ/JsL4FIAOK6BsxCPnKy3Rxp98MT9Tj8V7nA
         jtyUIhix3eTpO34vn9fKAnqwacfS8FJ49fRcnv9x4B3hC239R653nHLigQYi+CIzto7e
         O51bzDMPyGDtPhJQZlyjWN7p1UaB6mjO7VCokmTTatuF8r/X1fnni+xLCCMvEZT+pe2n
         6yR/seCXfYcyakuNYGyB8gdFQHpDLk50+5i2nWuoUEu0N3BHveDxkF+sroM2hXhztUtf
         lvmld08JCnUWjaV/RtJVEqoEuvpA5cIWY7iAknxV8W1KZ81s5ocQky36z12M6hER+Oft
         WlQg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788525633; x=1789130433; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=j0+GeMl6zOe/BFRxRXazQ5C0aLdugDFg6DqX1FNOkk0=;
        b=XfekO6iPmy0EDNCj4vIXOZOrvaOYU4fZwrK1xYT36c0FFHUudZzl2AIx3jEBvOPLQj
         tlvpqtIooL3cAsB/rQTuizKlCXDvSPGUFlhTiP8olV/Zua3oMn8LklK48fKMOhGDeUgz
         +RlU65S2IKW2sdaOWEguhOAC7ti/kGpOjUaOhXsH0yHd8KvLLgFmDilb+KuqeWGP/Kyu
         r8hhz118Dm2Kkmd0jGtjtHz2v5fCijvrTiVY3Xrn49PNeKF52MRu2l7iihQsrAoXlL3r
         dPnWMiI/KLdOYN+Ab9O6DtObQu1RR+2MIyCg+uVu3pzQHSD1B3MxcWwre3MLVFEoruxJ
         djtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788525633; x=1789130433;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=j0+GeMl6zOe/BFRxRXazQ5C0aLdugDFg6DqX1FNOkk0=;
        b=RMQXN0NH++tWJOP/ZPLuPuPhOLmu20MOFUkrBk6XBUL7CJptSbgN7WdJ4aBcgsB4YP
         dlFlywn1BnY8/sm7GHBeeYlHHFTYk0MVapNvGqp5LoOZt8yvzG07XPRnDgX88gfASKTM
         fAFpF/697FMDgbfCFxf+nfsXaYU0ZVV335d0Kn7W9u9TomrvEjOPh6497oMzZ/1HkNNx
         jIjKPI1boCtVARyIhCmm5rBDJdLaRBmOpwdQKkYUy7U9pE+zQ9IjXNnq1AGWma2eT/LG
         7pFcLV9RGJqE2dN/QkXWuAldWYjWtG+FMrHn9utcdZXVJDZrwiUwwV511epmJfJ8CRYK
         2+lg==
X-Forwarded-Encrypted: i=1; AKwUvBxpagaF8mmCHSV8eJXc5txT7TxN2a3022ZQ8+9+hlkZmbResiPbew0scE8p9/5thDdz2kmQHHLono8=@lists.infradead.org
X-Gm-Message-State: AFuF++mJ0HnvUTBGFm0ryeUArziYQ6AObP+Dua45IUqJ3HXTdM5CNRS/
	/K+p1sMyP7SkYUq+5KAbjx6G+8KHXeiHElrTX5TW3A2g6CJl1yMZCrwG4lwCBmvwHOO6pG2ZuLT
	tb6dhcCH3co/MxXc/hoA3zRPiXV0HP8LTGEqxfO2zwfTsXb7TMIVsxqp3QyME5kZqwDttOkui41
	bqaznUYAMaB3RI9dHK8HGcZ3cMbYlYe0Y5GX8cSYs0bPA=
X-Gm-Gg: AYBFou3Z2Kg0Iyx70hngz2NPZ1qUlaCxTueTgi3lLehuZvY1aphR5hzEy+isO9kVJJN
	pxyMmRv0F7GGvABMImMn0pIVK4KTgDmTXX61dFFpZShmeOFAbw85Lr2pZnZv3xR1P8oMT/OnMRx
	sB/vCuqg2D4yohXRPeglxdlQjAQQgU8jhbJk5EfG6+E7Kzq1dfm55tyiK7Jj7+lCR/pk3qIRsDE
	uaa6yGopsHdCk3EeX7vP7RLzsMWMGvjEZWta6LjdW1frpVulvCCD7TcPvuMIWlkzQ+bUuYhmHi2
X-Received: by 2002:a05:620a:690a:b0:936:dc16:206b with SMTP id af79cd13be357-9398043f64fmr553876585a.26.1788525632542;
        Fri, 04 Sep 2026 05:40:32 -0700 (PDT)
X-Received: by 2002:a05:620a:690a:b0:936:dc16:206b with SMTP id
 af79cd13be357-9398043f64fmr553866185a.26.1788525631793; Fri, 04 Sep 2026
 05:40:31 -0700 (PDT)
MIME-Version: 1.0
References: <20260904-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v15-0-68b7916e7a3f@linaro.org>
 <20260904-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v15-1-68b7916e7a3f@linaro.org>
In-Reply-To: <20260904-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v15-1-68b7916e7a3f@linaro.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 4 Sep 2026 14:40:20 +0200
X-Gm-Features: AcwNN1UPiDdyGKcq8V93lMRdj7jZ5WTUE_ubspKx3Qn_j0cuDTBr-ZQNMU5Z3Uo
Message-ID: <CAFEp6-0NyozWY7DVoFbNNuDkVY3nmHsvys5=84mM7OVH6cHfGA@mail.gmail.com>
Subject: Re: [PATCH v15 1/4] phy: core: Fix use-after-free in phy_get paths
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Felipe Balbi <balbi@ti.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzk@kernel.org>,
        stable@vger.kernel.org
X-Authority-Analysis: v=2.4 cv=afdRWxot c=1 sm=1 tr=0 ts=6a9abc41 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=3WHJM1ZQz_JShphwDgj5:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=uuK-gh7oNHpeqQh_G3oA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA0MDExNCBTYWx0ZWRfXwq6M/6nLZPFH
 20UqDKny886djJlmXyjw+Qf+N1LFpz8D6jS3wgfheCzkpEQEGl4Jq5GpubVCNdpw2hELGbfwhvr
 ftVehUhX8IZTYFu10Wt11fAI9VDEufRqMW9kK4D2xesvco2batn6AZHvpgVjoTMCmseCOIlYTrP
 sCk3HaGr2htj/cxK6nGKE3wf0nf6vgtEVARffkUTcJGgfH7NSzGeiXhqJGaM8BiCn6IRC/VQa/j
 lD0CIpJMBoJyiRpH1UcB6HP+Ee5LOLrvYCzIoHy0JVUvN5uC3Vf+fJGTWvJyjyTv2W/M/lVaDfC
 nhr2xgr0xmDI3zNrjmu0wsIeM2KCYdgfBvmPf1t9IHALBq30rQEknPXhhnbrQddsyngemW4boOg
 xTIiNrATXOe8guXp2Mzkrbzd1wrYQgDDQTW0pf6QLOJh+ovWoytvCPCfKIrDLpXJSviybLb/+YC
 XIiRCekt9ffQfX1lqlA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA0MDExNCBTYWx0ZWRfXx1aW4oNLydnr
 PNzb6VkaA43hEUZkvGQIX31ES5u6smtHa5xwaww4AVYAyIIqqWA+Gf2HTw0HgSE5xff89Ywh98g
 vegL0BSuMbO/79bB7F9caW/VyGjpYJo=
X-Proofpoint-ORIG-GUID: _w6moAL_zP6dkxramNsFC4H_74CHDFrg
X-Proofpoint-GUID: _w6moAL_zP6dkxramNsFC4H_74CHDFrg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-04_03,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0
 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609040114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_054034_476797_DA3BF62B 
X-CRM114-Status: GOOD (  28.11  )
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

T24gRnJpLCBTZXAgNCwgMjAyNiBhdCAxOjUz4oCvUE0gQnJ5YW4gTydEb25vZ2h1ZQo8YnJ5YW4u
b2Rvbm9naHVlQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gU2FzaGlrbyBhc2tlZCBkdXJpbmcgYSBw
YXRjaCByZXZpZXcgaWYgdGhlIGV4aXN0aW5nIHVzYWdlIHBhdHRlcm4gaGFkIGEKPiByYWNlIGNv
bmRpdGlvbjsgc3BlY2lmaWNhbGx5IGluIG9mX3BoeV9nZXQoKSBpZiBpdCB3YXMgcG9zc2libGUg
YmV0d2Vlbgo+IHJldHVybmluZyBmcm9tIF9vZl9waHlfZ2V0KCkgYW5kIHJ1bm5pbmcgdHJ5X21v
ZHVsZV9nZXQoKSB0aGF0IGEgbW9kdWxlCj4gbWlnaHQgYmUgdW5ib3VuZCBsZWFkaW5nIHRvIHVz
ZS1hZnRlci1mcmVlLgo+Cj4gTG9va2luZyBhdCB0aGUgY29kZSB0aGlzIGFwcGVhcnMgdG8gYmUg
c28sIHRoZXJlIGlzIG5vIGxpbmthZ2UgYmV0d2VlbiB0aGUKPiBwaHkgYW5kIG1vZHVsZSB1bmRl
ciBhIHN5bmNocm9uaXNhdGlvbiBwcmltaXRpdmUuCj4KPiBVc2luZyB0aGUgcGh5X3Byb3ZpZGVy
X211dGV4IGluIHBoeV9nZXQoKSB3aWxsIGVuc3VyZSB0aGVyZSBpcyBhIGxpbmsgYmV0d2Vlbgo+
IHRoZSByZXR1cm5lZCBwaHkgcG9pbnRlciBhbmQgdGhlIG1vZHVsZV9nZXQoKSBidW1waW5nIHRo
ZSBtb2R1bGUgcmVmZXJlbmNlCj4gY291bnQuCj4KPiBBbWVuZCBwaHlfZ2V0KCksIG9mX3BoeV9n
ZXQoKSBhbmQgZGV2bV9vZl9waHlfZ2V0X2J5X2luZGV4KCkgdG8gZml4IHRoZQo+IHNhbWUgdXNh
Z2UgcGF0dGVybi4KPgo+IHBoeV9wcm92aWRlcl91bnJlZ2lzdGVyKCkgbXVzdCB0YWtlIHRoZSBw
aHlfcHJvdmlkZXJfbXV0ZXggc28gYW1lbmRpbmcKPiBwaHlfZ2V0KCkvb2ZfcGh5X2dldCgpIHRv
IHRha2UgdGhhdCBzYW1lIG11dGV4IGd1YXJhbnRlZXMgdGhlcmUgaXMgbm8KPiB1c2UtYWZ0ZXIt
ZnJlZS4KPgo+IEZpeGVzOiBmZjc2NDk2MzQ3OWExICgiZHJpdmVyczogcGh5OiBhZGQgZ2VuZXJp
YyBQSFkgZnJhbWV3b3JrIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IFNpZ25lZC1v
ZmYtYnk6IEJyeWFuIE8nRG9ub2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgoKUmV2
aWV3ZWQtYnk6IExvaWMgUG91bGFpbiA8bG9pYy5wb3VsYWluQG9zcy5xdWFsY29tbS5jb20+Cgo+
IC0tLQo+ICBkcml2ZXJzL3BoeS9waHktY29yZS5jIHwgNDUgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25z
KCspLCAxNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY29y
ZS5jIGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+IGluZGV4IDIxYWFmMmY3NmU1M2UuLjg5YWRk
ZDczMmJmZjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+ICsrKyBiL2Ry
aXZlcnMvcGh5L3BoeS1jb3JlLmMKPiBAQCAtMTI0LDEzICsxMjQsMTMgQEAgc3RhdGljIHN0cnVj
dCBwaHkgKnBoeV9maW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3QgY2hhciAqY29uX2lkKQo+
ICAgICAgICAgY29uc3QgY2hhciAqZGV2X2lkID0gZGV2X25hbWUoZGV2KTsKPiAgICAgICAgIHN0
cnVjdCBwaHlfbG9va3VwICpwLCAqcGwgPSBOVUxMOwo+Cj4gLSAgICAgICBtdXRleF9sb2NrKCZw
aHlfcHJvdmlkZXJfbXV0ZXgpOwo+ICsgICAgICAgbG9ja2RlcF9hc3NlcnRfaGVsZCgmcGh5X3By
b3ZpZGVyX211dGV4KTsKPiArCj4gICAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KHAsICZwaHlz
LCBub2RlKQo+ICAgICAgICAgICAgICAgICBpZiAoIXN0cmNtcChwLT5kZXZfaWQsIGRldl9pZCkg
JiYgIXN0cmNtcChwLT5jb25faWQsIGNvbl9pZCkpIHsKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBwbCA9IHA7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gICAgICAgICAgICAg
ICAgIH0KPiAtICAgICAgIG11dGV4X3VubG9jaygmcGh5X3Byb3ZpZGVyX211dGV4KTsKPgo+ICAg
ICAgICAgcmV0dXJuIHBsID8gcGwtPnBoeSA6IEVSUl9QVFIoLUVOT0RFVik7Cj4gIH0KPiBAQCAt
NjI0LDYgKzYyNCw4IEBAIHN0YXRpYyBzdHJ1Y3QgcGh5ICpfb2ZfcGh5X2dldChzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5wLCBpbnQgaW5kZXgpCj4gICAgICAgICBzdHJ1Y3QgcGh5ICpwaHkgPSBOVUxM
Owo+ICAgICAgICAgc3RydWN0IG9mX3BoYW5kbGVfYXJncyBhcmdzOwo+Cj4gKyAgICAgICBsb2Nr
ZGVwX2Fzc2VydF9oZWxkKCZwaHlfcHJvdmlkZXJfbXV0ZXgpOwo+ICsKPiAgICAgICAgIHJldCA9
IG9mX3BhcnNlX3BoYW5kbGVfd2l0aF9hcmdzKG5wLCAicGh5cyIsICIjcGh5LWNlbGxzIiwKPiAg
ICAgICAgICAgICAgICAgaW5kZXgsICZhcmdzKTsKPiAgICAgICAgIGlmIChyZXQpCj4gQEAgLTYz
NSwxMSArNjM3LDEwIEBAIHN0YXRpYyBzdHJ1Y3QgcGh5ICpfb2ZfcGh5X2dldChzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5wLCBpbnQgaW5kZXgpCj4gICAgICAgICAgICAgICAgIGdvdG8gb3V0X3B1dF9u
b2RlOwo+ICAgICAgICAgfQo+Cj4gLSAgICAgICBtdXRleF9sb2NrKCZwaHlfcHJvdmlkZXJfbXV0
ZXgpOwo+ICAgICAgICAgcGh5X3Byb3ZpZGVyID0gb2ZfcGh5X3Byb3ZpZGVyX2xvb2t1cChhcmdz
Lm5wKTsKPiAgICAgICAgIGlmIChJU19FUlIocGh5X3Byb3ZpZGVyKSB8fCAhdHJ5X21vZHVsZV9n
ZXQocGh5X3Byb3ZpZGVyLT5vd25lcikpIHsKPiAgICAgICAgICAgICAgICAgcGh5ID0gRVJSX1BU
UigtRVBST0JFX0RFRkVSKTsKPiAtICAgICAgICAgICAgICAgZ290byBvdXRfdW5sb2NrOwo+ICsg
ICAgICAgICAgICAgICBnb3RvIG91dF9wdXRfbm9kZTsKPiAgICAgICAgIH0KPgo+ICAgICAgICAg
aWYgKCFvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKGFyZ3MubnApKSB7Cj4gQEAgLTY1Myw4ICs2NTQs
NiBAQCBzdGF0aWMgc3RydWN0IHBoeSAqX29mX3BoeV9nZXQoc3RydWN0IGRldmljZV9ub2RlICpu
cCwgaW50IGluZGV4KQo+ICBvdXRfcHV0X21vZHVsZToKPiAgICAgICAgIG1vZHVsZV9wdXQocGh5
X3Byb3ZpZGVyLT5vd25lcik7Cj4KPiAtb3V0X3VubG9jazoKPiAtICAgICAgIG11dGV4X3VubG9j
aygmcGh5X3Byb3ZpZGVyX211dGV4KTsKPiAgb3V0X3B1dF9ub2RlOgo+ICAgICAgICAgb2Zfbm9k
ZV9wdXQoYXJncy5ucCk7Cj4KPiBAQCAtNjc4LDE1ICs2NzcsMjEgQEAgc3RydWN0IHBoeSAqb2Zf
cGh5X2dldChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLCBjb25zdCBjaGFyICpjb25faWQpCj4gICAg
ICAgICBpZiAoY29uX2lkKQo+ICAgICAgICAgICAgICAgICBpbmRleCA9IG9mX3Byb3BlcnR5X21h
dGNoX3N0cmluZyhucCwgInBoeS1uYW1lcyIsIGNvbl9pZCk7Cj4KPiArICAgICAgIG11dGV4X2xv
Y2soJnBoeV9wcm92aWRlcl9tdXRleCk7Cj4gKwo+ICAgICAgICAgcGh5ID0gX29mX3BoeV9nZXQo
bnAsIGluZGV4KTsKPiAgICAgICAgIGlmIChJU19FUlIocGh5KSkKPiAtICAgICAgICAgICAgICAg
cmV0dXJuIHBoeTsKPiArICAgICAgICAgICAgICAgZ290byBvdXRfdW5sb2NrOwo+Cj4gLSAgICAg
ICBpZiAoIXRyeV9tb2R1bGVfZ2V0KHBoeS0+b3BzLT5vd25lcikpCj4gLSAgICAgICAgICAgICAg
IHJldHVybiBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwo+ICsgICAgICAgaWYgKCF0cnlfbW9kdWxl
X2dldChwaHktPm9wcy0+b3duZXIpKSB7Cj4gKyAgICAgICAgICAgICAgIHBoeSA9IEVSUl9QVFIo
LUVQUk9CRV9ERUZFUik7Cj4gKyAgICAgICAgICAgICAgIGdvdG8gb3V0X3VubG9jazsKPiArICAg
ICAgIH0KPgo+ICAgICAgICAgZ2V0X2RldmljZSgmcGh5LT5kZXYpOwo+Cj4gK291dF91bmxvY2s6
Cj4gKyAgICAgICBtdXRleF91bmxvY2soJnBoeV9wcm92aWRlcl9tdXRleCk7Cj4gICAgICAgICBy
ZXR1cm4gcGh5Owo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKG9mX3BoeV9nZXQpOwo+IEBAIC03
ODYsNiArNzkxLDcgQEAgc3RydWN0IHBoeSAqcGh5X2dldChzdHJ1Y3QgZGV2aWNlICpkZXYsIGNv
bnN0IGNoYXIgKnN0cmluZykKPiAgICAgICAgIHN0cnVjdCBwaHkgKnBoeTsKPiAgICAgICAgIHN0
cnVjdCBkZXZpY2VfbGluayAqbGluazsKPgo+ICsgICAgICAgbXV0ZXhfbG9jaygmcGh5X3Byb3Zp
ZGVyX211dGV4KTsKPiAgICAgICAgIGlmIChkZXYtPm9mX25vZGUpIHsKPiAgICAgICAgICAgICAg
ICAgaWYgKHN0cmluZykKPiAgICAgICAgICAgICAgICAgICAgICAgICBpbmRleCA9IG9mX3Byb3Bl
cnR5X21hdGNoX3N0cmluZyhkZXYtPm9mX25vZGUsICJwaHktbmFtZXMiLAo+IEBAIC03OTYsMTUg
KzgwMiwxOCBAQCBzdHJ1Y3QgcGh5ICpwaHlfZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3Qg
Y2hhciAqc3RyaW5nKQo+ICAgICAgICAgfSBlbHNlIHsKPiAgICAgICAgICAgICAgICAgaWYgKHN0
cmluZyA9PSBOVUxMKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgZGV2X1dBUk4oZGV2LCAi
bWlzc2luZyBzdHJpbmdcbiIpOwo+IC0gICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBFUlJf
UFRSKC1FSU5WQUwpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBoeSA9IEVSUl9QVFIoLUVJ
TlZBTCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290byBvdXRfdW5sb2NrOwo+ICAgICAg
ICAgICAgICAgICB9Cj4gICAgICAgICAgICAgICAgIHBoeSA9IHBoeV9maW5kKGRldiwgc3RyaW5n
KTsKPiAgICAgICAgIH0KPiAgICAgICAgIGlmIChJU19FUlIocGh5KSkKPiAtICAgICAgICAgICAg
ICAgcmV0dXJuIHBoeTsKPiArICAgICAgICAgICAgICAgZ290byBvdXRfdW5sb2NrOwo+Cj4gLSAg
ICAgICBpZiAoIXRyeV9tb2R1bGVfZ2V0KHBoeS0+b3BzLT5vd25lcikpCj4gLSAgICAgICAgICAg
ICAgIHJldHVybiBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwo+ICsgICAgICAgaWYgKCF0cnlfbW9k
dWxlX2dldChwaHktPm9wcy0+b3duZXIpKSB7Cj4gKyAgICAgICAgICAgICAgIHBoeSA9IEVSUl9Q
VFIoLUVQUk9CRV9ERUZFUik7Cj4gKyAgICAgICAgICAgICAgIGdvdG8gb3V0X3VubG9jazsKPiAr
ICAgICAgIH0KPgo+ICAgICAgICAgZ2V0X2RldmljZSgmcGh5LT5kZXYpOwo+Cj4gQEAgLTgxMyw2
ICs4MjIsOCBAQCBzdHJ1Y3QgcGh5ICpwaHlfZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3Qg
Y2hhciAqc3RyaW5nKQo+ICAgICAgICAgICAgICAgICBkZXZfZGJnKGRldiwgImZhaWxlZCB0byBj
cmVhdGUgZGV2aWNlIGxpbmsgdG8gJXNcbiIsCj4gICAgICAgICAgICAgICAgICAgICAgICAgZGV2
X25hbWUocGh5LT5kZXYucGFyZW50KSk7Cj4KPiArb3V0X3VubG9jazoKPiArICAgICAgIG11dGV4
X3VubG9jaygmcGh5X3Byb3ZpZGVyX211dGV4KTsKPiAgICAgICAgIHJldHVybiBwaHk7Cj4gIH0K
PiAgRVhQT1JUX1NZTUJPTF9HUEwocGh5X2dldCk7Cj4gQEAgLTk2MSwxNSArOTcyLDE3IEBAIHN0
cnVjdCBwaHkgKmRldm1fb2ZfcGh5X2dldF9ieV9pbmRleChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0
cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4gICAgICAgICBpZiAoIXB0cikKPiAgICAgICAgICAgICAg
ICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4KPiArICAgICAgIG11dGV4X2xvY2soJnBoeV9w
cm92aWRlcl9tdXRleCk7Cj4gICAgICAgICBwaHkgPSBfb2ZfcGh5X2dldChucCwgaW5kZXgpOwo+
ICAgICAgICAgaWYgKElTX0VSUihwaHkpKSB7Cj4gICAgICAgICAgICAgICAgIGRldnJlc19mcmVl
KHB0cik7Cj4gLSAgICAgICAgICAgICAgIHJldHVybiBwaHk7Cj4gKyAgICAgICAgICAgICAgIGdv
dG8gb3V0X3VubG9jazsKPiAgICAgICAgIH0KPgo+ICAgICAgICAgaWYgKCF0cnlfbW9kdWxlX2dl
dChwaHktPm9wcy0+b3duZXIpKSB7Cj4gICAgICAgICAgICAgICAgIGRldnJlc19mcmVlKHB0cik7
Cj4gLSAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwo+ICsgICAg
ICAgICAgICAgICBwaHkgPSBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwo+ICsgICAgICAgICAgICAg
ICBnb3RvIG91dF91bmxvY2s7Cj4gICAgICAgICB9Cj4KPiAgICAgICAgIGdldF9kZXZpY2UoJnBo
eS0+ZGV2KTsKPiBAQCAtOTgyLDYgKzk5NSw4IEBAIHN0cnVjdCBwaHkgKmRldm1fb2ZfcGh5X2dl
dF9ieV9pbmRleChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4g
ICAgICAgICAgICAgICAgIGRldl9kYmcoZGV2LCAiZmFpbGVkIHRvIGNyZWF0ZSBkZXZpY2UgbGlu
ayB0byAlc1xuIiwKPiAgICAgICAgICAgICAgICAgICAgICAgICBkZXZfbmFtZShwaHktPmRldi5w
YXJlbnQpKTsKPgo+ICtvdXRfdW5sb2NrOgo+ICsgICAgICAgbXV0ZXhfdW5sb2NrKCZwaHlfcHJv
dmlkZXJfbXV0ZXgpOwo+ICAgICAgICAgcmV0dXJuIHBoeTsKPiAgfQo+ICBFWFBPUlRfU1lNQk9M
X0dQTChkZXZtX29mX3BoeV9nZXRfYnlfaW5kZXgpOwo+Cj4gLS0KPiAyLjU1LjAKPgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
