Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1539CE7718B
	for <linux-phy@archiver.kernel.org>; Fri, 20 Dec 2024 00:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oqeZV2xh5YgpfmINcMYhGpBw2ETu4UYNIVs92Vy91Y=; b=1wFniFzRkET8sS
	FGKQLzJdIIm3lynmQTfKdRs+I9UhsgMKVgmy4cb110l//ZRxKV+sAS/Q7WpiqcN3xEgJ4zwaIcF5s
	XjbML84TV/EMk98cm77SvvL3oPwP8Ltp/Dma749a5Z1FlJ8E2UNZpq0jObyunvws2bOmJPxHiH0v3
	cnGU1c8kCsnnY7A6dC0MRymV3oy0TezcVVVUJbGnDyN9R1h86BDlsUyHZDo2hFCokLrUWdigJZwR4
	5LzHQOSH/WBc1MWGB+LYKVQnKX/6YYEllJzd5jqUxzvLJ480Aza6uNMIkEeuz6GfGi4uDZhu4ytsl
	4Ago9tTQyPOAlRB8LxRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQSA-00000003PiL-11jA;
	Fri, 20 Dec 2024 00:01:14 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQS7-00000003Phr-2J7E
	for linux-phy@lists.infradead.org;
	Fri, 20 Dec 2024 00:01:12 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5401bd6cdb7so1311460e87.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Dec 2024 16:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734652870; x=1735257670; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9ppd25HBqmFfv+IJcOohEbU7bcq5SdHXRRHwWFqlHX4=;
        b=KvZszMBxob8ZfT/iVq68x7aG0JeS02uzyc3/QjtC1lY7NJhbMqj0xwn6WQ5CcozVy4
         b92y+fuxuPPaZtpo2FgJvIONwXPf7gL9WXJ7pEzjuGetBA2saCpDemlgmbiw01bAU2K0
         sq3FlRIqnspx/fwzWEIZbldRYNJB9BVm5OipOI8KMwSrR+h1Yd2p8DosAluG8IBHJ4ZT
         9a0cgtYmwKhd52IbguCpWuVrZTJQGYNwXs9qv9lm5U1cW/KUzJPyTAXsO0mFkswK8Owz
         myminGf5F+cUdZ1x88y1shRjVqft3dHXDQZVkqOcA2j91NzvX/6RH1sRRxnETA4yDCml
         mqmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734652870; x=1735257670;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9ppd25HBqmFfv+IJcOohEbU7bcq5SdHXRRHwWFqlHX4=;
        b=IMV7Uzjlap0XgCdHCto1YguGJxpvC26HqduUW6D5iUxRGeQlmDpIjeHPHr7YD/bifs
         LQCBzhnO5GORRezh1E0RnurFd7u6zypA3MlWdfQOkfg5b9uvxC6mLL5oIkmIqwYmindj
         apI0z/FRBawHbluxSfgm/t6jdmXYPOJM8mNC0c/L1/UM97KUwBEresm2ZFqCV4d7dUMP
         Zn+6Vq3pgnxCGlj2RuD0O+FYb14vFOJsFgT93OD9+vDgYkE8bEaSpb0mISmGQwawa7as
         Pm0Zhfas6MurVX42ykstKW0hcyg66d6+r0y6WHy8UUWnN2Jjrj/4NMXzq/SbrF6Y7bEq
         abaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfzGVtaXWos3FIhx7z7JAWW+vnvicrrMa/s2wrsiMfDTfqhhzvjp25Kwuny/f8kQUFMSRfGkOOnnE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIIxCY3Q2NTNJbRrmKn9NsDkywtWPxvKzkYi56o18j0pbkB+by
	HiHLpTk0lEz+3OTPpx4azBykFc3WWYqgjmC+UtLbr+PY7oikXVV7sv/cb/Uu2Y4=
X-Gm-Gg: ASbGncuCzEM3IUGX1PjidBivTYmAdLYLfgtpKctoFS9Tlf/jMuZEcl34EhHuiq+/Ttm
	pO8UdVybwhTx4mh8ddLwOahGBVRF6wdBFgmNkRfEHF4HmjZhglU17Oa81Vcb0nw8rjDnB+xzvlP
	vstD26VVtcXgnzYQPSKZ85cXqlWpr4VBT6AJVaS0QPevWXVd72KGB75gQHHkZgGt2P3SSERGhuE
	jO3PR15ewD23LI8+LvCbIVDHU2j8XvIYWM0vWO/VJEJbi6A0vvYlnTIiNeMNQaL0MLDScPYHoMP
	N2AdLzXCse7YvqgSF4Hn5ZrWQI9e2H9JoUYs
X-Google-Smtp-Source: AGHT+IFJZHpp+D2sUVziZMo4UnuT3wO/G1Gyc0+v1xRTJrpIryyxy3e70N2DN7WfTVrywrSUzo0eOg==
X-Received: by 2002:a05:6512:2356:b0:53e:df2b:df25 with SMTP id 2adb3069b0e04-542295300c0mr141127e87.16.1734652869635;
        Thu, 19 Dec 2024 16:01:09 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542238138fbsm306948e87.159.2024.12.19.16.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:01:08 -0800 (PST)
Date: Fri, 20 Dec 2024 02:01:06 +0200
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
Message-ID: <jdw3xuknq2atcowl5xboimp3fol56t5nilefrxzpbdpwdoo5oc@pggif3lysjhh>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-3-09a4338d93ef@quicinc.com>
 <CAA8EJppOR_UXoVpMt-dhfWdCz3UNfsXGdz8X9NqpaSmYj3AZDg@mail.gmail.com>
 <5ea14162-567b-462d-be02-b73b954b7507@quicinc.com>
 <5whv4z7u6fkfwlv5muox5dmv6fow4mga76ammapw7wph7vwv3f@xibcjdfqorgf>
 <iqcofcntirmlwcpyfr4yabymqfcgyrij57bibf337tmxpa73t6@npkt6wquenf6>
 <527baded-f348-48a8-81cd-3f84c0ff1077@quicinc.com>
 <t5vcjlf44fhae4f2h75cfs3f7r6tdstw4ysmkapvvawj6xp23x@xnxqnxvyhshe>
 <d5151b82-5f05-4826-99b4-e925c20550b4@quicinc.com>
 <7vdaasc3flhpabnorjty5qjorlbp22honuscgpbteakgagg2tq@frqa6flk2mmv>
 <df1a4457-129e-452c-8089-ee1e6f9a3e12@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df1a4457-129e-452c-8089-ee1e6f9a3e12@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_160111_602456_06B95A34 
X-CRM114-Status: GOOD (  48.82  )
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

T24gV2VkLCBEZWMgMTgsIDIwMjQgYXQgMDg6NTU6NTRQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gCj4gT24gMTIvMTIvMjAyNCAzOjE1IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3Rl
Ogo+ID4gT24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMDg6NTA6MDJQTSArMDgwMCwgWGlhbmd4dSBZ
aW4gd3JvdGU6Cj4gPj4KPiA+Pgo+ID4+IE9uIDEyLzExLzIwMjQgNTo0NiBQTSwgRG1pdHJ5IEJh
cnlzaGtvdiB3cm90ZToKPiA+Pj4gT24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMDg6NDY6MTZBTSAr
MDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+IE9uIDEyLzEwLzIw
MjQgMTE6MDkgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+Pj4gT24gVGh1LCBEZWMg
MDUsIDIwMjQgYXQgMDg6MzE6MjRQTSArMDIwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+
Pj4+Pj4gT24gVGh1LCBEZWMgMDUsIDIwMjQgYXQgMDk6MjY6NDdQTSArMDgwMCwgWGlhbmd4dSBZ
aW4gd3JvdGU6Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IE9uIDExLzI5LzIwMjQgMTA6
MzMgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+Pj4+Pj4gT24gRnJpLCAyOSBOb3Yg
MjAyNCBhdCAwOTo1OSwgWGlhbmd4dSBZaW4gPHF1aWNfeGlhbmd4dXlAcXVpY2luYy5jb20+IHdy
b3RlOgo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBFeHRlbmRlZCBEUCBzdXBwb3J0IGZvciBRQ1M2
MTUgVVNCIG9yIERQIHBoeS4gRGlmZmVyZW50aWF0ZWQgYmV0d2Vlbgo+ID4+Pj4+Pj4+PiBVU0JD
IGFuZCBEUCBQSFkgdXNpbmcgdGhlIG1hdGNoIHRhYmxl4oCZcyB0eXBlLCBkeW5hbWljYWxseSBn
ZW5lcmF0aW5nCj4gPj4+Pj4+Pj4+IGRpZmZlcmVudCB0eXBlcyBvZiBjZmcgYW5kIGxheW91dCBh
dHRyaWJ1dGVzIGR1cmluZyBpbml0aWFsaXphdGlvbiBiYXNlZAo+ID4+Pj4+Pj4+PiBvbiB0aGlz
IHR5cGUuIFN0YXRpYyB2YXJpYWJsZXMgYXJlIHN0b3JlZCBpbiBjZmcsIHdoaWxlIHBhcnNlZCB2
YWx1ZXMKPiA+Pj4+Pj4+Pj4gYXJlIG9yZ2FuaXplZCBpbnRvIHRoZSBsYXlvdXQgc3RydWN0dXJl
Lgo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4gV2UgZGlkbid0IGhhdmUgYW4gdW5kZXJzdGFuZGluZyAv
IGNvbmNsdXNpb24gd2hldGhlcgo+ID4+Pj4+Pj4+IHFjb20sdXNiLXNzcGh5LXFtcC11c2IzLW9y
LWRwIFBIWXMgYXJlIGFjdHVhbGx5IGEgc2luZ2xlIGRldmljZSAvIFBIWQo+ID4+Pj4+Pj4+IG9y
IHR3byBQSFlzIGJlaW5nIHBsYWNlZCBuZXh0IHRvIGVhY2ggb3RoZXIuIENvdWxkIHlvdSBwbGVh
c2Ugc3RhcnQKPiA+Pj4+Pj4+PiB5b3VyIGNvbW1pdCBtZXNzYWdlIGJ5IGV4cGxhaW5pbmcgaXQ/
IE9yIGV2ZW4gYmV0dGVyLCBtYWtlIHRoYXQgYSBwYXJ0Cj4gPj4+Pj4+Pj4gb2YgdGhlIGNvdmVy
IGxldHRlciBmb3IgYSBuZXcgc2VyaWVzIHRvdWNoaW5nIGp1c3QgdGhlIFVTQkMgUEhZCj4gPj4+
Pj4+Pj4gZHJpdmVyLiBEUCBjaGFuZ2VzIGRvbid0IGhhdmUgYW55dGhpbmcgaW4gY29tbW9uIHdp
dGggdGhlIFBIWSBjaGFuZ2VzLAo+ID4+Pj4+Pj4+IHNvIHlvdSBjYW4gc3BsaXQgdGhlIHNlcmll
cyBpbnRvIHR3by4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4gQmVmb3JlIGltcGxlbWVudCBEUCBleHRl
bnNpb24sIHdlIGhhdmUgZGlzY3Vzc2VkIHdpdGggYWJoaW5hdiBhbmQga3Jpc2huYSBhYm91dCB3
aGV0aGVyIHVzZSBjb21ibywgdXNiYyBvciBzZXBhcmF0ZSBwaHkuCj4gPj4+Pj4+Cj4gPj4+Pj4+
IFdoYXQgaXMgIkRQIGV4dGVuc2lvbiI/Cj4gPj4+Pj4+Cj4gPj4+PiBJJ20gc29ycnkgY29uZnVz
aW9uIGNhc3VlZCBieSBteSBkZXNjcmlwdGlvbi4gSXQncyBtZWFucyBleHRlbmQgRFAgaW1wbGVt
bnQgZm9yIFVTQkMgcGh5IGRyaXZlci4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBXZSBpZGVudGlmaWVk
IHRoYXQgRFAgYW5kIFVTQiBzaGFyZSBzb21lIGNvbW1vbiBjb250cm9scyBmb3IgcGh5X21vZGUg
YW5kIG9yaWVudGF0aW9uLgo+ID4+Pj4+Pj4gU3BlY2lmaWNhbGx5LCAnVENTUl9VU0IzXzBfRFBf
UEhZTU9ERScgY29udHJvbHMgd2hvIG11c3QgdXNlIHRoZSBsYW5lcyAtIFVTQiBvciBEUCwKPiA+
Pj4+Pj4+IHdoaWxlIFBFUklQSF9TU19VU0IwX1VTQjNQSFlfUENTX01JU0NfVFlQRUNfQ1RSTCBj
b250cm9scyB0aGUgb3JpZW50YXRpb24uCj4gPj4+Pj4+PiBJdCB3b3VsZCBiZSBtb3JlIGVmZmlj
aWVudCBmb3IgYSBzaW5nbGUgZHJpdmVyIHRvIG1hbmFnZSB0aGVzZSBjb250cm9scy4gCj4gPj4+
Pj4+Cj4gPj4+Pj4+IFRoZSBxdWVzdGlvbiBpcyBhYm91dCB0aGUgaGFyZHdhcmUsIG5vdCBhYm91
dCB0aGUgZHJpdmVyLgo+ID4+Pj4+Pgo+ID4+Pj4+Pj4gQWRkaXRpb25hbGx5LCB0aGlzIFBIWSBk
b2VzIG5vdCBzdXBwb3J0IEFsdCBNb2RlLCBhbmQgdGhlIHR3byBjb250cm9sIHJlZ2lzdGVycyBh
cmUgbG9jYXRlZCBpbiBzZXBhcmF0ZSBhZGRyZXNzIHNwYWNlcy4gCj4gPj4+Pj4+PiBUaGVyZWZv
cmUsIGV2ZW4gdGhvdWdoIHRoZSBvcmllbnRhdGlvbiBmb3IgRFAgb24gdGhpcyBwbGF0Zm9ybSBp
cyBhbHdheXMgbm9ybWFsIGFuZCBjb25uZWN0ZWQgdG8gdGhlIHZpZGVvIG91dHB1dCBib2FyZCwg
Cj4gPj4+Pj4+PiB3ZSBzdGlsbCBkZWNpZGVkIHRvIGJhc2UgaXQgb24gdGhlIFVTQkMgZXh0ZW5z
aW9uLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBDb3VsZCB5b3UgcGxlYXNlIGNsYXJpZnksIGRvIHVzYjMt
b3ItZHAgUEhZcyBzdXBwb3J0IERQLW92ZXItVVNCLUM/IEkKPiA+Pj4+Pj4gdGhvdWdodCB0aGF0
IHVzYmMtb3ItZHAgcGxhdGZvcm1zIHN1cHBvcnQgdGhhdCwgYnV0IHRoZXkgZG9uJ3QKPiA+Pj4+
Pj4gc3VwcG9ydCBEUCtVU0IgcGluIGNvbmZpZ3VyYXRpb24uIE5vdGUsIHRoZSBxdWVzdGlvbiBp
cyBicm9hZGVyIHRoYW4KPiA+Pj4+Pj4ganVzdCBRQ1M2MTUsIGl0IGNvdmVycyB0aGUgUEhZIHR5
cGUgaXRzZWxmLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBBbHNvLCBpcyBUQ1NSIGNvbmZpZ3VyYXRpb24g
cmVhZC93cml0ZSBvciByZWFkLW9ubHk/IEFyZSB3ZSBzdXBwb3NlZCB0bwo+ID4+Pj4+PiBzZXQg
dGhlIHJlZ2lzdGVyIGZyb20gT1Mgb3IgYXJlIHdlIHN1cHBvc2VkIHRvIHJlYWQgaXQgYW5kIHRo
dXMgZGV0ZW1pbmUKPiA+Pj4+Pj4gdGhlIFBIWSBtb2RlPwo+ID4+Pj4+Cj4gPj4+Pj4gQW55IHVw
ZGF0ZXMgb24gdGhlc2UgdHdvIHRvcGljcz8KPiA+Pj4+Pgo+ID4+Pj4gU3RpbGwgY29uZmlybWlu
ZyBkZXRhaWwgaW5mbyB3aXRoIEhXICYgZGVzaWduIHRlYW0uCj4gPj4+PiBJ4oCZbGwgdXBkYXRl
IHRoZSBpbmZvcm1hdGlvbiB0aGF0IGhhcyBiZWVuIGNvbmZpcm1lZCBzbyBmYXIuCj4gPj4+PiBU
aGlzIHBoeSBzdXBwb3J0IERQLW92ZXItVVNCLUMsYnV0IGl0J3Mgbm90IHN1cHBvcnQgYWx0LW1v
ZGUgd2hpY2ggMiBsYW5lIHdvcmsgZm9yIERQLCBvdGhlciAyIGxhbmUgd29yayBmb3IgVVNCLgo+
ID4+Pj4gVENTUiBwaHkgbW9kZSBpcyByZWFkL3dyaXRlIHJlZyBhbmQgd2UgY2FuIHJlYWQgZm9y
IGRldGVybWluZSBwaHkgbW9kZS4KPiA+Pj4KPiA+Pj4gT2ssIHRoYW5rcyBmb3IgdGhlIGV4cGxh
bmF0aW9uLiBGcm9tIG15IHBvaW50IG9mIHZpZXc6Cj4gPj4+Cj4gPj4+IC0gSW1wbGVtZW50IHRo
ZSBEUCBQSFkgdG8gYmUgYSBwYXJ0IG9mIHRoZSBzYW1lIGRyaXZlci4gRWFjaCBkZXZpY2UKPiA+
Pj4gICBzdXBwb3J0ZWQgYnkgdGhlIHVzYmMgZHJpdmVyIHNob3VsZCBnZXQgYm90aCBQSFlzLgo+
ID4+Pgo+ID4+PiAtIE1ha2Ugc3VyZSBub3QgdG8gYnJlYWsgdGhlIEFCSTogI3BoeS1jZWxscyA9
IDwwPiBzaG91bGQgc3RpbGwgd29yayBhbmQKPiA+Pj4gICByZXR1cm4gVVNCIFBIWSwga2VlcGlu
ZyBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eS4gTmV3ZXIgZGV2aWNlcyBvcgo+ID4+PiAgIHVwZ3Jh
ZGVkIERUIGZvciBvbGQgZGV2aWNlcyBzaG91bGQgcmV0dXJuIFVTQiBQSFkgZm9yIDwuLi4gMD4g
YW5kIERQCj4gPj4+ICAgUEhZIGZvciA8Li4uIDE+Lgo+ID4+Pgo+ID4+IFllcywgY3VycmVudGx5
IHdlIGhhdmUgaW1wbGVtZW50ZWQgbGlrZSB5b3VyIGRlc2NyaXB0aW9uLAo+ID4+IEVhY2ggZGVp
dmNlIHNob3VkIGdldCBib3RoIFBIWXMsIERQIFBIWSBmb3IgPC4uLiAxPiBhbmQgVVNCIFBIWSBm
b3IgPC4uLiAwPi4KPiA+IAo+ID4gUGxlYXNlIG5vdGUgdGhlIGJhY2t3YXJkcyBjb21wYXRpYmls
aXR5IGNsYXVzZS4KPiA+IAo+IEZvciB0aGUgVVNCIG5vZGUsIHdlIGtlcHQgdGhlIHNhbWUgaW1w
bGVtZW50YXRpb24gYXMgdGhlIG9yaWdpbmFsIGZ1bmN0aW9uIGludGVyZmFjZSwgYW5kIHRoZSBk
ZXZpY2V0cmVlIG5vZGUgZGVmaW5pdGlvbiBhbHNvIHJlbWFpbnMgdW5jaGFuZ2VkLgo+IEluIHN1
YnNlcXVlbnQgcGF0Y2hlcywgSSB3aWxsIGZvbGxvdyBLcnp5c3p0b2bigJlzIHN1Z2dlc3Rpb24g
dG8gdXNlIGEgc2VwYXJhdGUgRFQtYmluZGluZyB0byBkZXNjcmliZSB0aGUgRFAgUEhZIGNvbmZp
Z3VyYXRpb24sIAo+IHdpdGhvdXQgbWFraW5nIGNoYW5nZXMgdG8gdGhlIFVTQiBkZXZpY2V0cmVl
IGFuZCBEVC1iaW5kaW5nIGltcGxlbWVudGF0aW9uLgo+ID4+PiAtIEknbSBub3Qgc2h1cmUgaG93
IHRvIGhhbmRsZSB0aGUgVVNCIGFuZCBEUCBjb2V4aXN0ZW5jZSwgZXNwZWNpYWxseSBpbgo+ID4+
PiAgIHlvdXIgY2FzZSBvZiB0aGUgVVNCLW9yLURQIFBIWS4KPiA+Pj4KPiA+PiBGb3IgY29leGlz
dGVuY2UgcHJvY2VzczoKPiA+Pgo+ID4+IFdoZW4gd2Ugc3RhcnQgaW1wbGVtZW50IERQIHBhcnQs
IHVzYiBkcml2ZXIgdGVhbSBzYWlkIG9ubHkgbmVlZCBjb25maWcgVENTUiBwaHkgbW9kZSBhbmQg
b3JpZW50YXRpb24gZHVyaW5nIHN3aXRjaCBpbiBVU0ItQyBwb3J0Lgo+ID4+IEJhc2VkIG9uIHlv
dXIgcHJldmlvdXMgY29tbWVudHMgYXZvdXQgU1dfUFdSRE4sIEknbSBjb25maXJtaW5nIHdpdGgg
dGhlIFVTQiB0ZWFtIHdoZXRoZXIgU1dfUkVTVC9TV1BXUkROL1NUQVJUX0NUUkwgcmVnaXN0ZXJz
IG1pZ2h0IGFmZmVjdCBEUC4KPiA+IAo+ID4gVGhhbmtzIQo+ID4gCj4gPj4gQW55d2F5LCBldmVu
IHRob3VnaCB0aGUgb3JpZ2luYWwgU29DIGRlc2lnbiBzdXBwb3J0cyBEUCBvciBVU0Igb3ZlciBU
eXBlLUPvvIwKPiA+PiBidXQgb24gUUNTNjE1IEFEUCBBSVIgcGxhdGZvcm0sIHRoZXJlIGFyZSBv
bmx5IGZvdXIgVVNCLUEgcG9ydCB3aGljaCB3b3JrcyB3aXRoICdxY3M2MTUtcW1wLXVzYjMtcGh5
JyBkcml2ZXIsIGFuZCBubyBVU0ItQyBwb3J0Lgo+ID4+IERQIHBvcnQgaXMgbWFwcHBlZCBmcm9t
IHVzYiBwaW4gdG8gdGhlIHZpZGVvIG91dCBzdWItYm9hcmQuCj4gPj4gc28gd2UgYXJlIHVuYWJs
ZSB0byB2ZXJpZnkgdGhlIHN3aXRjaGluZyBjYXNlIGJldHdlZW4gRFAgYW5kIFVTQiBkZXZpY2Vz
IHVuZGVyIFVTQi1DLgo+ID4gCj4gPiBUaGF0J3MgYWxzbyBmaW5lLiBXZSB3aWxsIGdldCB0byB0
aGF0IHBvaW50IG9uY2UgTVNNODk5OCAvIFNETTY2MAo+ID4gZ2V0IFVTQi1DIHN1cHBvcnQgKHRo
ZSBvbmx5IGN1cnJlbnQgYmxvY2tlciBpcyB0aGUgc3VwcG9ydCBmb3IgdGhlCj4gPiBUWVBFQyBi
bG9jayBvZiB0aGUgUE1JODk5OCkuCj4gPiAKPiBJIGNhbid0IGFjY2VzcyBNU004OTk4IC8gU0RN
NjYwIGRvY3VtZW50cyBub3csIGJ1dCBJIGhhdmUgY29uZmlybWVkIGRldGFpbCBpbmZvIGFib3V0
IFVTQiAmIERQIHBoeSBkZXNpZ24gZm9yIHNtNjE1MC4KPiAKPiBUaGUgJ3VzYi1zc3BoeS1xbXAt
dXNiMy1vci1kcCBQSFknIG9uIHRoZSBjdXJyZW50IHBsYXRmb3JtIGlzIGVzc2VudGlhbGx5IGNv
bXBvc2VkIG9mIHRocmVlIHN1Yi1QSFlzLCAKPiB3aGljaCBjYW4gZXZlbiBiZSBjb25zaWRlcmVk
IGFzIHRocmVlIHNlcGFyYXRlIFBIWXM6IFVTQjMgcHJpbWFyeSBQSFksIFVTQjMgc2Vjb25kYXJ5
IFBIWSwgYW5kIFVTQjMgRFAgUEhZLgoKSSd2ZSBsb29rZWQgYXQgc202MTUwLXVzYi5kdHNpIGFu
ZCBub3cgSSdtIGNvbXBsZXRlbHkgcHV6emxlZCBieSB5b3VyCmFuc3dlci4gVGhlIG1zbS00LjE0
IGtlcm5lbCBsaXN0cyBhIHNpbmdsZSBVU0IgUU1QIFBIWSBhdCAweDg4ZTYwMDAsCnVzZWQgZm9y
IHRoZSBwcmltYXJ5IFVTQjMgaG9zdC4gSXQgaXQgZGVmaW5lZCBhcwpxY29tLHVzYi1zc3BoeS1x
bXAtdXNiMy1vci1kcC4gU2Vjb25kYXJ5IFVTQiBob3N0IGlzIGxpc3RlZCBhcyBVU0IgMi4wCm9u
bHkuIFNvIHdoYXQgZG8geW91IG1lYW4gYnkgdGhlIFVTQjMgc2Vjb25kYXJ5IFBIWT8gV2hpY2gg
UEhZIGFuZCB3aGljaApwaW5zIGFyZSBjb25uZWN0ZWQgdG8geW91ciB2aWRlby1vdXQgYm9hcmQ/
Cgo+IAo+IE9uIHRoZSBRQ1M2MTUsIHRoZSBVU0IgcHJpbWFyeSBQSFkgaXMgY3VycmVudGx5IHVz
ZWQgdG8gaGFuZGxlIFVTQiAzLjAgY29tbXVuaWNhdGlvbiBmb3IgdGhlIHByZXZpb3VzbHkgbWVu
dGlvbmVkIGZvdXIgVVNCIFR5cGUtQSBwb3J0cywgCj4gd2hpbGUgdGhlIFVTQjMgc2Vjb25kYXJ5
IFBIWSBhbmQgVVNCMyBEUCBQSFkgYXJlIHVzZWQgZm9yIHRoZSBvdXRwdXQgb2YgdGhlIFR5cGUt
QyBwb3J0LAo+IGJ1dCBzaW5jZSB0aGUgVHlwZS1DIHBvcnQgaXMgZm9yY2libHkgcGluLXRvLXBp
biBjb25maWd1cmVkIHRvIHRoZSB2aWRlbyBvdXQgYm9hcmQsIHRoZSBUeXBlLUMgcG9ydCB3aWxs
IGFsd2F5cyBjb25maWd1cmUgYXMgRFAgUEhZLgo+IAo+IFRoZSBpbnRlcm5hbCByZWdpc3RlcnMg
b2YgdGhlc2UgdGhyZWUgUEhZcyBhcmUgaW5kZXBlbmRlbnQgb2YgZWFjaCBvdGhlciwgTmVpdGhl
ciB0aGVpciByZXNwZWN0aXZlIFNXUFdSX0ROIG5vciBTV1JTVCB3aWxsIGFmZmVjdCB0aGUgb3Ro
ZXIgdHdvIFBIWXMuCj4gQWRkaXRpb25hbGx5LCB0aGVyZSB3YXMgYSBtaXN1bmRlcnN0YW5kaW5n
IGFib3V0IHRoZSBvcmllbnRhdGlvbiBwcmV2aW91c2x5Lgo+IFRoZSBVU0Igb3JpZW50YXRpb24g
c2V0dGluZyBvbmx5IGFmZmVjdHMgdGhlIGN1cnJlbnQgUEhZIGFuZCBkb2VzIG5vdCBpbXBhY3Qg
dGhlIERQIFBIWS4gVGhlIERQIFBIWSBpcyBjb25maWd1cmVkIGluIHRoZSBEUF9QSFlfQ0ZHXzEu
Cj4gCj4gVFNDUl9QSFlfTU9ERSBjYW4gc3BlY2lmeSB3aGljaCBQSFkgb3V0cHV0cyB0byB0aGUg
VHlwZS1DIHBvcnQsIGFuZCB0aGUgZ2xvYmFsIHJlc2V0IHdpbGwgc2ltdWx0YW5lb3VzbHkgcmVz
ZXQgdGhlIHR3byBhc3NvY2lhdGVkIFBIWXMuIAo+IFRoZXJlZm9yZSwgdGhlIGNvcnJlY3Qgc3dp
dGNoaW5nIHByb2Nlc3MgaXMgYXMgZm9sbG93cy4KPiBXaGVuIHN3aXRjaGluZyB0aGUgaW5zZXJ0
ZWQgZGV2aWNlOgo+IAkxLklkZW50aWZ5IHRoZSBQSFkgdHlwZS4KPiAJMi5FbmFibGUgdGhlIHJl
Z3VsYXRvci4KPiAJMy5UcmlnZ2VyIGEgcmVzZXQuCj4gCTQuRW5hYmxlIHRoZSBjbG9jay4KPiAJ
NS5Db25maWd1cmUgUEhZIHR5cGUgcmVsYXRlZCBvcmllbnRhdGlvbgo+IAk2LnN3aXRjaCB0aGUg
VENTUiBQSFkgbW9kZS4KPiAJNy5Db25maWd1cmUgdGhlIHJlZ2lzdGVycyBvZiBQSFkuCj4gRHVy
aW5nIHJlbGVhc2U6Cj4gCTEuUmVzZXQuCj4gCTIuRGlzYWJsZSB0aGUgY2xvY2suCj4gCTMuRGlz
YWJsZSB0aGUgcmVndWxhdG9yLgo+IAo+IE91ciBjdXJyZW50IGRlc2lnbiBvdmVyYWxsIGNvbXBs
aWVzIHdpdGggdGhpcyBwcm9jZXNzLCBidXQgaXQgbGFja3MgdGhlIGNvbmZpZ3VyYXRpb24gZm9y
IERQX1BIWV9DRkdfMS4KPiAKPiBTaGFsbCB3ZSBjb250aW51ZSB0aGUgZGlzY3Vzc2lvbiB0byBj
bGFyaWZ5IHJlbWFpbiBjb21tZW50cyBvZiB0aGUgVVNCQyBkcml2ZXI/Cj4gCj4gPj4gSG93ZXZl
ciwgSSdtIGFsc28gY29uZmlybWluZyB3aGV0aGVyIGFueXRoaW5nIG90aGVyIHdpbGwgYWZmZWN0
IFVTQiBhbmQgRFAgZWFjaCBvdGhlci4KPiA+IAo+IAoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1p
dHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
