Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90479E77182
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 19:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMhM8SiuuFKC8r7nk8wjN8n70UIx1oF4IZRG2fmOKvI=; b=UH3oZrFIu4Y1+8
	A6iawufJyTHeVdX7/z4bD7aEwOcCuVImrsoH3XDy0L3iKOVc90uV4B142Zb36Yaq7FZlC5c73u2HX
	+aWNx6elbqghwElx/o2nIvQK5+QcVOXolO2Smtv6Z6W8q7t0TtXO27uTG/WXVmv8thnNmhEwdKV5D
	QBJo3VuUhOCuSfwBg9OmRgP2DT5K9Aeur+ldIoc42GUnZoA6hq53+nIITb874jhRPiwooQ3XythC6
	1N0orFINF0DQU02sYVIiTRhmXbqrjXZhoxW3Uqw4mPVeFS0SNAMDUQDZxYeGhp+rjFKaskQceUhx0
	Y08V7i5/cLuaFrpq+95w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLSBO-0000000FtIq-3fcO;
	Wed, 11 Dec 2024 19:15:38 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLSBM-0000000FtI0-2y65
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 19:15:37 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2ffd6b7d77aso80103491fa.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Dec 2024 11:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733944534; x=1734549334; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xwJG5tVEAPuDua/+zEisi7SKCgTlTwRIJJOT5jh9lAk=;
        b=SpPlMIHMgb8NZzCeP8xHzR/hTjgM+I0ocZlZiHORwyHwjVYTkCY5ZhNm3rvCNuRvVH
         ditDxa035U8JwRO/s5Z2DWSbw2pXXkGZOOftVlJKEuGCCHfJx+2cRK3cG2pQ8Bvbw1y+
         +c0Hi2W5iEuangzSlRvEjUD46iQsTepliiRagzBKLjhXUpPjZrGmooCcXgWEol0+YlCI
         43v3ge6uC2pZYc0D5wvq+6IzWMIqJzrtEbB8WYxNJIaHtU6n4HO6vj8ca4J8fp1BMMZF
         4zdNXUsKZy/8cqgp6CLAgnmU4HfaUInE3NvhEJoZApTg/vTa1+jDr6KSMOOFHbJC+Zwg
         pr8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733944534; x=1734549334;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xwJG5tVEAPuDua/+zEisi7SKCgTlTwRIJJOT5jh9lAk=;
        b=CSnNSzni533NNrlBJZ12+9lMky7TAIkHGqfEmd9vClYC3gHOJgJsdc+knG8hjf5ZIA
         4RRYzGqtei2hDUbWJ0B3qPBwo2KO2UP2l7LEK3ioJtkR6/9AcAHG0gJ5pRMF2zK7zhDt
         1eFu+Ibbii8t8sk0KNEu+suqLJQbVTFV8z50yb1hBUbjXOEJP0Gesvc3haddg0FQbn0t
         uJsJCH2QEOweiengxmZS+/dHjZ2aMAkYJptRC8C7AqPcjXDK1gE5L24de4Z40U0b0VQl
         qZVt3udAjE2yR2CnkQjadcWyFip+8M6M6pmFw0AjYAHP1glwWtTX631qOUNXwfcB3AjJ
         nQ9g==
X-Forwarded-Encrypted: i=1; AJvYcCUDhglMHszKszXzb8FWfPzVRaIBhehScW9wZtv2qSJ0dnBZ1QnDvLeq458YoBJVwqX+HCnjgN6D6g4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwjaAqzQ2A2fh3S5YcaANfXVN5J68v9KWWKyWO9JaQPtvJtAWsk
	X5/8FVO9FQQDysVCiSMCplZdZp2Y/o8IuCtOPcQgtHUy6eVm90ule9BkEhykAE8=
X-Gm-Gg: ASbGncsyowu1yaZxmGfJk7dkRAyaOw0LR/RDlMeLMg2aZzSmTOuL+CPAwGprHScxCh+
	fZBLwXkPlfBUKRCvhvUTK9O4SkPBr48JivP6kwsxnLsxhRamYHEhjFnyZC5p3v01j6pe8MMexqB
	tmNi7/1pQq71Bs3qgjj+3V6uqV/Ss6pLw2lJJsPjUVnlIenXhfPDfp9FGlZIHBrzoChC8v5QE+o
	P1Ed4M97qja2dpj3CpGhib2SoEKZRxioQoSYaLSl4oRoPAFBUFsgGbLAoszXPJCppCBbCvCB1u7
	h26GvM8KnxhGe/bOKAFrMHMlTKQMuGFmPA==
X-Google-Smtp-Source: AGHT+IF+vVtTZWka6wAG9ssDBMOZChK/BACOngdEv98xkt4y+52aaxKOJEYpuiSr8ME5jDwv2CFS9A==
X-Received: by 2002:a05:651c:886:b0:302:4115:acd with SMTP id 38308e7fff4ca-3024a21c6c9mr1832311fa.22.1733944534510;
        Wed, 11 Dec 2024 11:15:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30220583defsm10758071fa.4.2024.12.11.11.15.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 11:15:33 -0800 (PST)
Date: Wed, 11 Dec 2024 21:15:30 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH 3/8] phy: qcom: qmp-usbc: Add DP phy mode support on
 QCS615
Message-ID: <7vdaasc3flhpabnorjty5qjorlbp22honuscgpbteakgagg2tq@frqa6flk2mmv>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-3-09a4338d93ef@quicinc.com>
 <CAA8EJppOR_UXoVpMt-dhfWdCz3UNfsXGdz8X9NqpaSmYj3AZDg@mail.gmail.com>
 <5ea14162-567b-462d-be02-b73b954b7507@quicinc.com>
 <5whv4z7u6fkfwlv5muox5dmv6fow4mga76ammapw7wph7vwv3f@xibcjdfqorgf>
 <iqcofcntirmlwcpyfr4yabymqfcgyrij57bibf337tmxpa73t6@npkt6wquenf6>
 <527baded-f348-48a8-81cd-3f84c0ff1077@quicinc.com>
 <t5vcjlf44fhae4f2h75cfs3f7r6tdstw4ysmkapvvawj6xp23x@xnxqnxvyhshe>
 <d5151b82-5f05-4826-99b4-e925c20550b4@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d5151b82-5f05-4826-99b4-e925c20550b4@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_111536_749002_E80B61DF 
X-CRM114-Status: GOOD (  38.16  )
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

T24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMDg6NTA6MDJQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gCj4gT24gMTIvMTEvMjAyNCA1OjQ2IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3Rl
Ogo+ID4gT24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMDg6NDY6MTZBTSArMDgwMCwgWGlhbmd4dSBZ
aW4gd3JvdGU6Cj4gPj4KPiA+Pgo+ID4+IE9uIDEyLzEwLzIwMjQgMTE6MDkgUE0sIERtaXRyeSBC
YXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+IE9uIFRodSwgRGVjIDA1LCAyMDI0IGF0IDA4OjMxOjI0UE0g
KzAyMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+PiBPbiBUaHUsIERlYyAwNSwgMjAy
NCBhdCAwOToyNjo0N1BNICswODAwLCBYaWFuZ3h1IFlpbiB3cm90ZToKPiA+Pj4+Pgo+ID4+Pj4+
Cj4gPj4+Pj4gT24gMTEvMjkvMjAyNCAxMDozMyBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToK
PiA+Pj4+Pj4gT24gRnJpLCAyOSBOb3YgMjAyNCBhdCAwOTo1OSwgWGlhbmd4dSBZaW4gPHF1aWNf
eGlhbmd4dXlAcXVpY2luYy5jb20+IHdyb3RlOgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IEV4dGVuZGVk
IERQIHN1cHBvcnQgZm9yIFFDUzYxNSBVU0Igb3IgRFAgcGh5LiBEaWZmZXJlbnRpYXRlZCBiZXR3
ZWVuCj4gPj4+Pj4+PiBVU0JDIGFuZCBEUCBQSFkgdXNpbmcgdGhlIG1hdGNoIHRhYmxl4oCZcyB0
eXBlLCBkeW5hbWljYWxseSBnZW5lcmF0aW5nCj4gPj4+Pj4+PiBkaWZmZXJlbnQgdHlwZXMgb2Yg
Y2ZnIGFuZCBsYXlvdXQgYXR0cmlidXRlcyBkdXJpbmcgaW5pdGlhbGl6YXRpb24gYmFzZWQKPiA+
Pj4+Pj4+IG9uIHRoaXMgdHlwZS4gU3RhdGljIHZhcmlhYmxlcyBhcmUgc3RvcmVkIGluIGNmZywg
d2hpbGUgcGFyc2VkIHZhbHVlcwo+ID4+Pj4+Pj4gYXJlIG9yZ2FuaXplZCBpbnRvIHRoZSBsYXlv
dXQgc3RydWN0dXJlLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBXZSBkaWRuJ3QgaGF2ZSBhbiB1bmRlcnN0
YW5kaW5nIC8gY29uY2x1c2lvbiB3aGV0aGVyCj4gPj4+Pj4+IHFjb20sdXNiLXNzcGh5LXFtcC11
c2IzLW9yLWRwIFBIWXMgYXJlIGFjdHVhbGx5IGEgc2luZ2xlIGRldmljZSAvIFBIWQo+ID4+Pj4+
PiBvciB0d28gUEhZcyBiZWluZyBwbGFjZWQgbmV4dCB0byBlYWNoIG90aGVyLiBDb3VsZCB5b3Ug
cGxlYXNlIHN0YXJ0Cj4gPj4+Pj4+IHlvdXIgY29tbWl0IG1lc3NhZ2UgYnkgZXhwbGFpbmluZyBp
dD8gT3IgZXZlbiBiZXR0ZXIsIG1ha2UgdGhhdCBhIHBhcnQKPiA+Pj4+Pj4gb2YgdGhlIGNvdmVy
IGxldHRlciBmb3IgYSBuZXcgc2VyaWVzIHRvdWNoaW5nIGp1c3QgdGhlIFVTQkMgUEhZCj4gPj4+
Pj4+IGRyaXZlci4gRFAgY2hhbmdlcyBkb24ndCBoYXZlIGFueXRoaW5nIGluIGNvbW1vbiB3aXRo
IHRoZSBQSFkgY2hhbmdlcywKPiA+Pj4+Pj4gc28geW91IGNhbiBzcGxpdCB0aGUgc2VyaWVzIGlu
dG8gdHdvLgo+ID4+Pj4+Pgo+ID4+Pj4+IEJlZm9yZSBpbXBsZW1lbnQgRFAgZXh0ZW5zaW9uLCB3
ZSBoYXZlIGRpc2N1c3NlZCB3aXRoIGFiaGluYXYgYW5kIGtyaXNobmEgYWJvdXQgd2hldGhlciB1
c2UgY29tYm8sIHVzYmMgb3Igc2VwYXJhdGUgcGh5Lgo+ID4+Pj4KPiA+Pj4+IFdoYXQgaXMgIkRQ
IGV4dGVuc2lvbiI/Cj4gPj4+Pgo+ID4+IEknbSBzb3JyeSBjb25mdXNpb24gY2FzdWVkIGJ5IG15
IGRlc2NyaXB0aW9uLiBJdCdzIG1lYW5zIGV4dGVuZCBEUCBpbXBsZW1udCBmb3IgVVNCQyBwaHkg
ZHJpdmVyLgo+ID4+Pj4+Cj4gPj4+Pj4gV2UgaWRlbnRpZmllZCB0aGF0IERQIGFuZCBVU0Igc2hh
cmUgc29tZSBjb21tb24gY29udHJvbHMgZm9yIHBoeV9tb2RlIGFuZCBvcmllbnRhdGlvbi4KPiA+
Pj4+PiBTcGVjaWZpY2FsbHksICdUQ1NSX1VTQjNfMF9EUF9QSFlNT0RFJyBjb250cm9scyB3aG8g
bXVzdCB1c2UgdGhlIGxhbmVzIC0gVVNCIG9yIERQLAo+ID4+Pj4+IHdoaWxlIFBFUklQSF9TU19V
U0IwX1VTQjNQSFlfUENTX01JU0NfVFlQRUNfQ1RSTCBjb250cm9scyB0aGUgb3JpZW50YXRpb24u
Cj4gPj4+Pj4gSXQgd291bGQgYmUgbW9yZSBlZmZpY2llbnQgZm9yIGEgc2luZ2xlIGRyaXZlciB0
byBtYW5hZ2UgdGhlc2UgY29udHJvbHMuIAo+ID4+Pj4KPiA+Pj4+IFRoZSBxdWVzdGlvbiBpcyBh
Ym91dCB0aGUgaGFyZHdhcmUsIG5vdCBhYm91dCB0aGUgZHJpdmVyLgo+ID4+Pj4KPiA+Pj4+PiBB
ZGRpdGlvbmFsbHksIHRoaXMgUEhZIGRvZXMgbm90IHN1cHBvcnQgQWx0IE1vZGUsIGFuZCB0aGUg
dHdvIGNvbnRyb2wgcmVnaXN0ZXJzIGFyZSBsb2NhdGVkIGluIHNlcGFyYXRlIGFkZHJlc3Mgc3Bh
Y2VzLiAKPiA+Pj4+PiBUaGVyZWZvcmUsIGV2ZW4gdGhvdWdoIHRoZSBvcmllbnRhdGlvbiBmb3Ig
RFAgb24gdGhpcyBwbGF0Zm9ybSBpcyBhbHdheXMgbm9ybWFsIGFuZCBjb25uZWN0ZWQgdG8gdGhl
IHZpZGVvIG91dHB1dCBib2FyZCwgCj4gPj4+Pj4gd2Ugc3RpbGwgZGVjaWRlZCB0byBiYXNlIGl0
IG9uIHRoZSBVU0JDIGV4dGVuc2lvbi4KPiA+Pj4+Cj4gPj4+PiBDb3VsZCB5b3UgcGxlYXNlIGNs
YXJpZnksIGRvIHVzYjMtb3ItZHAgUEhZcyBzdXBwb3J0IERQLW92ZXItVVNCLUM/IEkKPiA+Pj4+
IHRob3VnaHQgdGhhdCB1c2JjLW9yLWRwIHBsYXRmb3JtcyBzdXBwb3J0IHRoYXQsIGJ1dCB0aGV5
IGRvbid0Cj4gPj4+PiBzdXBwb3J0IERQK1VTQiBwaW4gY29uZmlndXJhdGlvbi4gTm90ZSwgdGhl
IHF1ZXN0aW9uIGlzIGJyb2FkZXIgdGhhbgo+ID4+Pj4ganVzdCBRQ1M2MTUsIGl0IGNvdmVycyB0
aGUgUEhZIHR5cGUgaXRzZWxmLgo+ID4+Pj4KPiA+Pj4+IEFsc28sIGlzIFRDU1IgY29uZmlndXJh
dGlvbiByZWFkL3dyaXRlIG9yIHJlYWQtb25seT8gQXJlIHdlIHN1cHBvc2VkIHRvCj4gPj4+PiBz
ZXQgdGhlIHJlZ2lzdGVyIGZyb20gT1Mgb3IgYXJlIHdlIHN1cHBvc2VkIHRvIHJlYWQgaXQgYW5k
IHRodXMgZGV0ZW1pbmUKPiA+Pj4+IHRoZSBQSFkgbW9kZT8KPiA+Pj4KPiA+Pj4gQW55IHVwZGF0
ZXMgb24gdGhlc2UgdHdvIHRvcGljcz8KPiA+Pj4KPiA+PiBTdGlsbCBjb25maXJtaW5nIGRldGFp
bCBpbmZvIHdpdGggSFcgJiBkZXNpZ24gdGVhbS4KPiA+PiBJ4oCZbGwgdXBkYXRlIHRoZSBpbmZv
cm1hdGlvbiB0aGF0IGhhcyBiZWVuIGNvbmZpcm1lZCBzbyBmYXIuCj4gPj4gVGhpcyBwaHkgc3Vw
cG9ydCBEUC1vdmVyLVVTQi1DLGJ1dCBpdCdzIG5vdCBzdXBwb3J0IGFsdC1tb2RlIHdoaWNoIDIg
bGFuZSB3b3JrIGZvciBEUCwgb3RoZXIgMiBsYW5lIHdvcmsgZm9yIFVTQi4KPiA+PiBUQ1NSIHBo
eSBtb2RlIGlzIHJlYWQvd3JpdGUgcmVnIGFuZCB3ZSBjYW4gcmVhZCBmb3IgZGV0ZXJtaW5lIHBo
eSBtb2RlLgo+ID4gCj4gPiBPaywgdGhhbmtzIGZvciB0aGUgZXhwbGFuYXRpb24uIEZyb20gbXkg
cG9pbnQgb2YgdmlldzoKPiA+IAo+ID4gLSBJbXBsZW1lbnQgdGhlIERQIFBIWSB0byBiZSBhIHBh
cnQgb2YgdGhlIHNhbWUgZHJpdmVyLiBFYWNoIGRldmljZQo+ID4gICBzdXBwb3J0ZWQgYnkgdGhl
IHVzYmMgZHJpdmVyIHNob3VsZCBnZXQgYm90aCBQSFlzLgo+ID4gCj4gPiAtIE1ha2Ugc3VyZSBu
b3QgdG8gYnJlYWsgdGhlIEFCSTogI3BoeS1jZWxscyA9IDwwPiBzaG91bGQgc3RpbGwgd29yayBh
bmQKPiA+ICAgcmV0dXJuIFVTQiBQSFksIGtlZXBpbmcgYmFja3dhcmRzIGNvbXBhdGliaWxpdHku
IE5ld2VyIGRldmljZXMgb3IKPiA+ICAgdXBncmFkZWQgRFQgZm9yIG9sZCBkZXZpY2VzIHNob3Vs
ZCByZXR1cm4gVVNCIFBIWSBmb3IgPC4uLiAwPiBhbmQgRFAKPiA+ICAgUEhZIGZvciA8Li4uIDE+
Lgo+ID4gCj4gWWVzLCBjdXJyZW50bHkgd2UgaGF2ZSBpbXBsZW1lbnRlZCBsaWtlIHlvdXIgZGVz
Y3JpcHRpb24sCj4gRWFjaCBkZWl2Y2Ugc2hvdWQgZ2V0IGJvdGggUEhZcywgRFAgUEhZIGZvciA8
Li4uIDE+IGFuZCBVU0IgUEhZIGZvciA8Li4uIDA+LgoKUGxlYXNlIG5vdGUgdGhlIGJhY2t3YXJk
cyBjb21wYXRpYmlsaXR5IGNsYXVzZS4KCj4gPiAtIEknbSBub3Qgc2h1cmUgaG93IHRvIGhhbmRs
ZSB0aGUgVVNCIGFuZCBEUCBjb2V4aXN0ZW5jZSwgZXNwZWNpYWxseSBpbgo+ID4gICB5b3VyIGNh
c2Ugb2YgdGhlIFVTQi1vci1EUCBQSFkuCj4gPiAKPiBGb3IgY29leGlzdGVuY2UgcHJvY2VzczoK
PiAKPiBXaGVuIHdlIHN0YXJ0IGltcGxlbWVudCBEUCBwYXJ0LCB1c2IgZHJpdmVyIHRlYW0gc2Fp
ZCBvbmx5IG5lZWQgY29uZmlnIFRDU1IgcGh5IG1vZGUgYW5kIG9yaWVudGF0aW9uIGR1cmluZyBz
d2l0Y2ggaW4gVVNCLUMgcG9ydC4KPiBCYXNlZCBvbiB5b3VyIHByZXZpb3VzIGNvbW1lbnRzIGF2
b3V0IFNXX1BXUkROLCBJJ20gY29uZmlybWluZyB3aXRoIHRoZSBVU0IgdGVhbSB3aGV0aGVyIFNX
X1JFU1QvU1dQV1JETi9TVEFSVF9DVFJMIHJlZ2lzdGVycyBtaWdodCBhZmZlY3QgRFAuCgpUaGFu
a3MhCgo+IEFueXdheSwgZXZlbiB0aG91Z2ggdGhlIG9yaWdpbmFsIFNvQyBkZXNpZ24gc3VwcG9y
dHMgRFAgb3IgVVNCIG92ZXIgVHlwZS1D77yMCj4gYnV0IG9uIFFDUzYxNSBBRFAgQUlSIHBsYXRm
b3JtLCB0aGVyZSBhcmUgb25seSBmb3VyIFVTQi1BIHBvcnQgd2hpY2ggd29ya3Mgd2l0aCAncWNz
NjE1LXFtcC11c2IzLXBoeScgZHJpdmVyLCBhbmQgbm8gVVNCLUMgcG9ydC4KPiBEUCBwb3J0IGlz
IG1hcHBwZWQgZnJvbSB1c2IgcGluIHRvIHRoZSB2aWRlbyBvdXQgc3ViLWJvYXJkLgo+IHNvIHdl
IGFyZSB1bmFibGUgdG8gdmVyaWZ5IHRoZSBzd2l0Y2hpbmcgY2FzZSBiZXR3ZWVuIERQIGFuZCBV
U0IgZGV2aWNlcyB1bmRlciBVU0ItQy4KClRoYXQncyBhbHNvIGZpbmUuIFdlIHdpbGwgZ2V0IHRv
IHRoYXQgcG9pbnQgb25jZSBNU004OTk4IC8gU0RNNjYwCmdldCBVU0ItQyBzdXBwb3J0ICh0aGUg
b25seSBjdXJyZW50IGJsb2NrZXIgaXMgdGhlIHN1cHBvcnQgZm9yIHRoZQpUWVBFQyBibG9jayBv
ZiB0aGUgUE1JODk5OCkuCgo+IEhvd2V2ZXIsIEknbSBhbHNvIGNvbmZpcm1pbmcgd2hldGhlciBh
bnl0aGluZyBvdGhlciB3aWxsIGFmZmVjdCBVU0IgYW5kIERQIGVhY2ggb3RoZXIuCgotLSAKV2l0
aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
