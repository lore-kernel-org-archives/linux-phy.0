Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78DAEC4450A
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 08:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJjOOxMCgWAe1KM7smGPRl945ruN3Gm4cu1sa+QoxuQ=; b=j8U3qDFXA01qTN
	t8Wk4CsyCQAys3KqdFRdILre3PWBvw8ACCdC1+h3ZPyfzZWQ/NeOkY2aR3FZFl+R8xVxWFMOz0A45
	H2dWZ+BgP/vSTqgmtN0B/UenXPVknUrwOCXDHhOiEklTlbiVZ4A5PClDLCjcGuhCBcvC4Pcznrexm
	qLFZUiDRQ1NekyrxOcVjBqvU38ERuSaqpQOKYo3GEq+jiEn1q+PzmaQpS6O3mKGV//GxHoR9+pZab
	R51mcdqHaseyBY/AyfLrf340PyR7e32H/YkDhH6wg2voCxzBDVBuxZt8cCFBm7keNjdxLeN6UGmn8
	4kms6EvKo7KE/WLEPxbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkHtX-0000000GnGM-09ti;
	Thu, 16 Jul 2026 08:56:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkHtU-0000000GnFX-2JoG
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 08:56:37 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66G7Xa7n2176584
	for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 08:56:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	erxbLLRif2ylk2Ceg+Ib0QqzomEEukkcJoFFt+QTO8Q=; b=S6/qtwKV/SiAF+th
	7VAQiiWcHyBk94yMfL5ag7dWZ1HPNssi/K1bKCbuy4AGVnoMbrHSh3I4Y1iO4GGd
	8CU0NwbA2Iy8C1HSe9riD/CgdmcXWAJFvJY+WSmNgF0z8XButdmM9Bvr8yuIfhgx
	YLH3e2r9gpiDJD3dZSbLrolni1ub9fToFdcyexRyvPBb51zQpsq4sgQhhgAm+nEX
	NqAaT5J6t/m5Hns/2BycD3ZbaHQos59JLzoG6h/YHbMre0kcFaFCqfHOExK0KHXm
	vreHDOjOh92sBZ/S+8BPLIvg6WmzFwD1Bf9xedWUTqT8rCE1ekwpTTmNGaohtkJd
	vRFnSA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4feu1089jm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 08:56:34 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8eeba1d9e47so84943026d6.2
        for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 01:56:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784192194; cv=none;
        d=google.com; s=arc-20260327;
        b=WorjGWHKUg2CYoB12YcsxpB3zoO1MZ21gcZ38OWu4f4PEZjbfUWEbMqOpWmq0isxd9
         U/+5/O3mcFPFsS5SiQ/rZeS8UCxqTHnZGrgzQxwhOn436K/LnsdqPK6Nlm1KbqxAr9oI
         Pjaqpb2XST1kBhdr/7I66I1AqmlYJm6wEEsbF6MQ7XjjZEkyK3fd9qKJcbVBGKTRJ7KE
         4ZpNgshzM6UwdwYDFd855vktXQmgwv4wCbCVihjDAuPbpLvUtVrGBsvWrwgXipc1EE31
         1FwRwM8wIosOkSkGZ/SlJLh1KQ1eaHBaGlZL/UN4u0INGpWUCijoWW6pZtTAOrkRIrpF
         dDYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=erxbLLRif2ylk2Ceg+Ib0QqzomEEukkcJoFFt+QTO8Q=;
        fh=tDrpuHJO8yeCNPfNAuzClBrzGxpeO1dHE1i/TQssh7A=;
        b=MIcZZWkPmJXKCga6N7EKYYULez9ELsFvWs5ngk6Egoac2ZaTuFVzrHy9xvmHPLoyWZ
         89LeRa1wHxvfoXucEuPlRY4HI/hlP3Sg8t5bGauwL9uPopqJQze5h48EWxmaiCZi4AAn
         VEfclBRroM4PS1smYnA7bZCJP2E3WvRuauQ/qfxxHcomlgyZ94i7V++VXlmYbfcltAhO
         hxTZiklXTlAeNghd0RoZ9CcB9uc4+Nbq5D0GaOeBSMOygJ8XDg61BoZZ5tk9lhDkvwgs
         zVu+2AUFORAHD7OvCQ9hYgq3UQI8ACPTzMh/FjTPXBcICl+SOl2bgMIaeHkli+5Nu4s+
         BoKg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784192194; x=1784796994; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=erxbLLRif2ylk2Ceg+Ib0QqzomEEukkcJoFFt+QTO8Q=;
        b=eIziUMOiA2Ga8ojN+siKEyF0QqLveeoPgkgL+S9fSrlufaaIGtBEhUVQ3UlD8NUap9
         ubPO0FmqVw2y6Qg5omL8zvJ5rg7VwtYIXvT4WD910BRZQDLDpA/RE+cNenDH54COFN0J
         KUBVJETlVn4g4I2Be0neseiXALuqC+T5AY/4ZOVjNfnSXxsQiSaXA712MvB5aiQRe/Zn
         WP8RpZkM8etM9jOvx8VfZf95ygK/wDKrtPPJFRMMebMAJxRyAyceajhhT15AYBQP+MzX
         3gVA4Yz7lxdXWdoRSUdn82S1paenV/ZnAddMaXBloXRfR44Jy1lfMGPE56NRI+nVpx9E
         mCYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784192194; x=1784796994;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=erxbLLRif2ylk2Ceg+Ib0QqzomEEukkcJoFFt+QTO8Q=;
        b=HQqZ1xTXuoO1qhlqdYOmzA+9vWGwHT6NEt6gZtX56ft82xcNFe9bqJ2rKhA7Y/TVxz
         MsbC8DVzfR6/w2lxqnIxjZWg2SW1wtW7umD1k2lcksIwBRPEfxXxHFTSIxdkNhzYvkBb
         fvrblmeQ/9WoNY2bKogp98COkeBOL20psnvMEwH+/2K+8PJhhm8RT/UAsbG0lA/CSM06
         U3BmS4x7P93ovyNprnu6+JGPoKlTPvIqtfP39VlaScQzXXAeehzgX7VKKGqf4y7pWA7s
         MyNuW5ujO2Qk8l2XWC1g2VmUGhcAY0ZkNh3C/wRwdWkm/qOqy+43d19v2H5NZk68+j6t
         CKWQ==
X-Forwarded-Encrypted: i=1; AHgh+RpET10bO3hBf7rkL5mTbTPKenTP0BNaX8OH05vU19CFI4IZK1Knim5IQvtVgdJAFsO1xFCzSYZEdXg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyq0SyRL5HA1ZPcIVi9zh+E1JoO/oYxnhvIx/REYeW7dCMaxZ40
	VyMGvu0s/0PV7oulcpltUOd1RNnhgRYi0cRa8pTXFQACia8Lq6oP4BDgoFzn85ccw5BttG1d9cT
	/Tjbr/Q5X5geqiJp961ydNp1D5FgPFEBga8Vv+/w/QJUxVnNjjjA455rraFvXctXNrzPD3CeIvt
	cKx/q7/GUYOWvgcykE7a4QbWFrbIgI/6b0K+Ay8P+8f0c=
X-Gm-Gg: AfdE7cmi5VEVO/3crEhtdsKQgb+xHGNpt5OptgC3x4mrXGhLApYFQAcomie/MjAbtOI
	vvXhPySxfohX7cN6euy+7ysDLLcnuwotmA/zfFjd9fG4A6N8nXErlxwSeXoB/XjT2lLn8Gbqj6a
	ZC9Gsq0nWVpPD0Htmx3giFBTpGScFbXX8iF2qv9UGDREg6xanjkLAdsV4u6uKB+bSmvcIc0+84t
	7rkYs6u3TfWmPEG3nHk8As9tWM/PiH5emIdQQ5lq88xO76GWiX56tg4XcOHWWBXHENffCLOYtSw
X-Received: by 2002:a05:6214:1c82:b0:902:e628:90f1 with SMTP id 6a1803df08f44-9074c6e5fa8mr121652536d6.1.1784192193651;
        Thu, 16 Jul 2026 01:56:33 -0700 (PDT)
X-Received: by 2002:a05:6214:1c82:b0:902:e628:90f1 with SMTP id
 6a1803df08f44-9074c6e5fa8mr121652286d6.1.1784192193157; Thu, 16 Jul 2026
 01:56:33 -0700 (PDT)
MIME-Version: 1.0
References: <20260708-x1e-csi2-phy-v9-0-0210b90c04cf@linaro.org>
 <20260708-x1e-csi2-phy-v9-1-0210b90c04cf@linaro.org> <YSunV_lNJ8xW_y-Aa2psZavniF6mcHJlJipuj1RYWMB8Zb8yLC-gb7eEnk0XMjfwQOneMGsZM5foFKutCNhYqw==@protonmail.internalid>
 <b7baffda-b97c-4b83-8d9e-e381d0289682@linaro.org> <3ab676ac-919b-4a80-8dd6-71dd7f6fe06c@kernel.org>
 <-iN0mG5nS2joxEn49UrxFlORE3R6Ji3HRebfOMNMGnupMIobTBdRDvnwjRHAXHeLmGf6O4JJENVauduwZXwhiA==@protonmail.internalid>
 <b834e9a0-a61c-4912-b57c-36d571938b75@linaro.org> <4d7a0e59-7c34-4557-a475-8cd7fd2ad2d9@kernel.org>
In-Reply-To: <4d7a0e59-7c34-4557-a475-8cd7fd2ad2d9@kernel.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 16 Jul 2026 10:56:21 +0200
X-Gm-Features: AUfX_my6CyfzbDCMixZ0ybaN2jQ8NmSLcHdbJCbKOIU7FiBcCg8_5mqZ43YRmKw
Message-ID: <CAFEp6-2J0WGF6g0K7s--PxciO+d9MR-SCVnrWJ3u=sgQNwA59A@mail.gmail.com>
Subject: Re: [PATCH v9 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: "Bryan O'Donoghue" <bod@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Proofpoint-ORIG-GUID: Q2Oi6ZDK8b-Dl6pCLXWA3Bk6VTG0xVF9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE2MDA5MCBTYWx0ZWRfX4o6e/VLIYAic
 TTN2AeJipwLOAlPEV5ly+aMCichWegvrijd1GxMzRuNK3pR93+j2q4GsJqMHxvNVkmSIgKFhY9R
 /pNrgcuaBDLHI6uMRWYcT1/K80VJHvtOo24Y0T8zN/+CLBqH0aB5oLAEVIFvqFMtc6vAU5eluNv
 Gr92/Ro+cdGQCFHGheWrCFfcvpN+R6z/U8SE9WAjMpJ1pcDNpxlqWzASOH+E6C/Ct3mzgAYkGY2
 M/Wz+kTBT8p6273wWIVd8bk3RZE1U0QYVg6kJb/wVdF4Yk1fwIynwBUEZ/uwEgMdiVSe+t7w/vQ
 5gaAgOKVtQr2i540hm6DsrQoE2vRYmAOHz5HUFAqRHOfgP/mG84u5eC+SSOlmZLEkBupwL58phn
 h5rR8lyQrp1cJok+pDkPTrdBySxB0muwzlfLgxqt3Q7N3QuUf4tAjmYfElP66+OWq3V9jHNmbIL
 OxpvzqmBOyAnWNStFNw==
X-Proofpoint-GUID: Q2Oi6ZDK8b-Dl6pCLXWA3Bk6VTG0xVF9
X-Authority-Analysis: v=2.4 cv=BPODalQG c=1 sm=1 tr=0 ts=6a589cc2 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8 a=IjkT-cPiO-FOTv-BaOsA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE2MDA5MCBTYWx0ZWRfX38MQjNXF7swb
 lAZxGVaNqHB3wmo4l+2/MzMmX/lFaTw1WXmEcfid2ccRQl3ThTl8J/lB+jgP/SLkAmKtqJMCdHn
 8/P4igMzzGtZTPjlocf2mPrWVyBaszY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-16_03,2026-07-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 phishscore=0 bulkscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607160090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_015636_705958_EC6A5717 
X-CRM114-Status: GOOD (  17.06  )
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

T24gTW9uLCBKdWwgMTMsIDIwMjYgYXQgMToxOOKAr0FNIEJyeWFuIE8nRG9ub2dodWUgPGJvZEBr
ZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDA5LzA3LzIwMjYgMDg6NDAsIFZsYWRpbWlyIFphcG9s
c2tpeSB3cm90ZToKPiA+PiBBcyBleHBsYWluZWQgaW4gdGhlIGNvdmVyIGxldHRlcjogSSdtIGZv
bGxvd2luZyBndWlkYW5jZSBmcm9tIFJvYiBvbiB0aGF0Lgo+ID4gUGVoYXBzIHlvdSd2ZSBtaXNy
ZWFkIGEgZ2l2ZW4gcmV2aWV3IGNvbW1lbnQsIGJlY2F1c2UgUm9iJ3MgZ3VpZGFuY2UgaXMKPiA+
IHRvIHJlbW92ZSAncGh5LXR5cGUnIHByb3BlcnR5LAo+Cj4gSSdsbCBqdXN0IHF1b3RlIHZlcmJh
dGltICJQZXJoYXBzIHB1dHRpbmcgdGhpcyBpbiBwaHkgY2VsbHMgd291bGQgYmUKPiBiZXR0ZXIg
YmVjYXVzZSB0aGUgY29uc3VtZXIgZGVjaWRlcyBvbiB0aGUgbW9kZS4iCj4KPiBUaGF0IGlzIG5v
dCAicmVtb3ZlIHBoeS10eXBlIiAtIGl0J3MgIm1vdmUgdGhlIG1vZGUgaW50byB0aGUgY2VsbCIu
IEknbQo+IHNoaWZ0aW5nIHRoaXMgYmFjayB0byB0aGUgRFQgc2NoZW1hIG1haW50YWluZXJzIHNp
bmNlLCBJIHRha2UgdGhlaXIKPiBmZWVkYmFjayBsaXRlcmFsbHksIHNlcmlvdXNseSBhbmQgY2Fu
b25pY2FsbHkuCj4KPiBBbnkgb2YgdGhlIHRyaXVtdmlyYXRlIHdpbGwgZG8sIFJvYiwgS3J6eXN6
dG9mIG9yIENvbm9yLgo+Cj4gQWJzZW50IGEgZGlmZmVyZW50IGFuc3dlciBmcm9tIHRoZSBEVCBz
Y2hlbWEgZ3V5cywgdjEwIHNoaXBzIHdpdGggdGhlCj4gY29uc3VtZXIgZGVjaWRpbmcgdGhlIG1v
ZGUgYXMgcGVyIFJvYidzIG9yaWdpbmFsIGd1aWRhbmNlLgoKT24gdGhlICNwaHktY2VsbHMgcXVl
c3Rpb24sIElNTyB3ZSBzaG91bGQgZHJvcCAjcGh5LWNlbGxzIHRvIDAgYW5kCmRlcml2ZSB0aGUg
Qy1QSFkvRC1QSFkgbW9kZSBmcm9tIHRoZSBlbmRwb2ludCBidXMtdHlwZS4gVGhlIG9wZXJhdGlu
Zwptb2RlIGlzIHJlYWxseSBhIGNvbmZpZ3VyYXRpb24gb2YgdGhlIGxpbmsgcmF0aGVyIHRoYW4g
YSBoYXJkd2FyZQpkZXNjcmlwdGlvbi9saW1pdGF0aW9uIG9mIHRoZSBQSFkgYmxvY2sgaXRzZWxm
LGFuZCB0aGUgc2Vuc29yIGVuZHBvaW50CmlzIGNvbnZlbnRpb25hbGx5IHdoZXJlIHRoZSBidXMg
dHlwZSBvcmlnaW5hdGVzLiBJIGd1ZXNzIHRoaXMgY29zdHMgdXMKbm90aGluZyBvbiB0aGUgZHJp
dmVyIHNpZGUgdG9kYXksIHdlIG9ubHkgc3VwcG9ydCBELVBIWSwgc28gdGhlCm1vZGUtY2hlY2sg
anVzdCBtb3ZlcyBpbnRvIHRoZSBlbmRwb2ludCBwYXJzaW5nIHdlIGFscmVhZHkgZG8gaW4KcGh5
X3Fjb21fbWlwaV9jc2kyX3BhcnNlX3JvdXRpbmcoKS4gSXQgY2FuIGJlIGEgbWluaW1hbApmd25v
ZGVfcHJvcGVydHlfcmVhZF91MzIoZXAsICJidXMtdHlwZSIsIC4uLikgc2FuaXR5IGNoZWNrIGFu
ZCBhZGRpbmcKQy1QSFkgbGF0ZXIgaXMgdGhlbiBhIG9uZS1saW5lIGNhc2UgTUVESUFfQlVTX1RZ
UEVfQ1NJMl9DUEhZCndpdGggbm8gRFQgQUJJIGNoYW5nZS4KCk9uIGRhdGEtbGFuZXMgbnVtYmVy
aW5nLCBJIGRvbid0IGhhdmUgYSBzdHJvbmcgb3BpbmlvbiBoZXJlLiBLZWVwaW5nCnRoZSBjdXJy
ZW50IDAtYmFzZWQgdmFsdWVzIGlzIGRlZmVuc2libGUsIGluIHRoaXMgZHJpdmVyIHRoZSB2YWx1
ZSBpcwp1c2VkIGFzIGEgcGh5c2ljYWwgbGFuZSBpbmRleCBhbmQgaXQgc2VsZWN0cyB0aGUgcGVy
LWxhbmUgcmVnaXN0ZXIKYmFuayAoMHgyMDAgKiBuKSwgc28gMCBtYXBzIHRvIHBoeXNpY2FsIExO
MC4gSW4gdGhhdCBzZW5zZSAwLWJhc2VkIGlzCmEgZmFpdGhmdWwgcmVwcmVzZW50YXRpb24gb2Yg
dGhlIHBoeXNpY2FsIGxhbmUgcG9zaXRpb24gb24gdGhlIFNvQy4KClJlZ2FyZHMsCkxvaWMKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
