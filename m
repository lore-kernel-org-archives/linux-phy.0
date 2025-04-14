Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90C3EC369B5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 12:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQ8z1E426DulA9hcHWIynFK0jJrzKQ9qkMlVb9ezfCQ=; b=MuTZufO4PufYTK
	L5v+sNssCeDDYVAvP382RL9YokdfpnSQzxzSYdYvJ6ulXAVWKKtfSIO2mm5x6qj5cvAQzMdGKFeBp
	AqzGzZi3P3P9a8nfdOyu/Z1Orc3XeEQ8v2JkDXA/KmjCL1f2mnpV4STMhlGuPdsCxxLXfQ5ilQ0b1
	TNNY1y+yupKzuRH1biZuBhW9dQrXg1V+vZkVfsPWjwzJ08pyX+9iHBGBYugc68wpk5O+K+23nW9P8
	xIsEjaQUVXMTHiKt0+kZoPWO87xox7AhuQeXvuPSVA7C6Ff2QyUVA+xOE+hvH8BuwIfV2hmufY2JT
	McZvDHHLMEbKvmNTiZdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4JNw-000000021ae-1PZG;
	Mon, 14 Apr 2025 12:58:00 +0000
Received: from mail-vk1-xa2c.google.com ([2607:f8b0:4864:20::a2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4JIV-000000020wf-23Mn
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 12:52:24 +0000
Received: by mail-vk1-xa2c.google.com with SMTP id 71dfb90a1353d-523f6c14ce4so89644e0c.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 05:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744635142; x=1745239942; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lxq0k8JECetlMezwpx18zh68KnoK9PWRqalahhyXsYc=;
        b=gmPOGKNrdlFXStyC7PaCpDi7L/VtTh1Y1hibwaFM7bhhiddasP3PS1N2aTv0yzQnTe
         VSd0VPsnJa3eiR3JFpX2Iwr+XQh7Q1XsABBVSrLR8mlnE/d6W3Qb8buVErRy4JFUhLqN
         IYtu/fd2yIb/9dcVF2iTtANoCDl10KIKrpHLv/MhdsWRVaE+efhTzta5vg/7N9G4DOvp
         wYOi6LaIMWSmhOTlafW1AfKkEEB06RMmKWDG9ykqKgc0P9paIle8/eDhsLqasUf655ys
         qdDvz9YuUDpd8b3UkCLMFP+KdYCycxLhVYBj71Drk8H1qvRt0iJsr2FPqRwqgbYnkSMd
         tRCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744635142; x=1745239942;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lxq0k8JECetlMezwpx18zh68KnoK9PWRqalahhyXsYc=;
        b=DMv9867JTi8HAIQEcHg9pWhSvW7UGpOywZbaskISTWE5PLwdCRV5VVllaWqBHyiOxF
         wx7PE+G5PLzJ6XA45YwFhyq/r9QHDIU5b9fACbpcWIQ+XgW4kW+rV8M20AtGgSSeit6v
         TRRpTyocb+u3yhxfJgKLZoouqoKHIqiF7mjTLFmV0JRRDKPop5pLcMYSrw50pPJ2l5pJ
         YoYNM27B0rzSPuA/ZeNaGw/oII5lKmNcjnH7qZ/4qFBMo+oywyWos7SsOZu2Pi4pREqF
         /sbzI44GEnG5UxWN1DPUFPADWZ/jKt3cvsWyC+7oevMQsWzC3tQWQ2jVzZuAEU5djXb6
         T2TA==
X-Forwarded-Encrypted: i=1; AJvYcCU4Zr4bTN8cdeDm5dYe3fMDxFuoo0uGC6t0k1KUrKtQ7PCxJnfgzLDIii2PQwlqzjArDpiZQYrV1Mw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCeDKjkIjJ8piOpjWYkpY8PFMOrKrIcVJfFZy6OqkZr1TU01yM
	qIHOQdrNT07MS2BiJEo0hNDaacHrkNOGLDLyg1i8TFz1BOvDt+pl3hRnobqHqDROTn8PLAmy5E0
	dW7ZmoUxhz+h79MjkT9UDERA2izdAf95iLg==
X-Gm-Gg: ASbGncvxJRqum2TQT0UlZQrW8owGn1ZnON+RdQwn3dB3GpXckJ0/4OHZ2mAA2FBcbAJ
	Dql6ojSbL24ngU93kGEtGH1PpnLnz2AjeQ8/L9G8dvG38lEI+8n/CrOOvp83G0Nhd0mDTRIPodd
	t2Ls9VOyXnFx3VxdLbVzHTH2Y=
X-Google-Smtp-Source: AGHT+IF/v7mtNxmW/BA3M7zuPV30jB46+QuFqkvXXuoe9h6dKHwUIeEENVSAWHN3prhzK88qFeD9PyaKIbVWCr8a0Gk=
X-Received: by 2002:a05:6122:d90:b0:527:67da:74eb with SMTP id
 71dfb90a1353d-527f7218ae6mr2145470e0c.1.1744635142084; Mon, 14 Apr 2025
 05:52:22 -0700 (PDT)
MIME-Version: 1.0
References: <20250413212518.2625540-1-chenyuan0y@gmail.com>
 <22ec4fc8-9368-4955-ac97-c49b3317d3b3@kernel.org> <Z_y73a5IDO66AzY1@hovoldconsulting.com>
 <f3b77aa4-e7a4-475f-a633-48aab59fa9b1@kernel.org> <Z_zDtfEsgXsFodG9@hovoldconsulting.com>
In-Reply-To: <Z_zDtfEsgXsFodG9@hovoldconsulting.com>
From: Chenyuan Yang <chenyuan0y@gmail.com>
Date: Mon, 14 Apr 2025 07:52:11 -0500
X-Gm-Features: ATxdqUGA6rf8NvPr_QyC7nCQ3KhCb283Qi94-D8xvSbaWhdMjQ7j7Sb5pzG1syg
Message-ID: <CALGdzuo2qn-Eq=UgsSpkEvR4ZZgGKb=ETepWBoeMCf_x0J5kQQ@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom-qmp-usb: Fix an NULL vs IS_ERR() bug
To: Johan Hovold <johan@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org, kishon@kernel.org, lumag@kernel.org, 
	quic_kriskura@quicinc.com, manivannan.sadhasivam@linaro.org, 
	konrad.dybcio@oss.qualcomm.com, quic_varada@quicinc.com, 
	quic_kbajaj@quicinc.com, johan+linaro@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_055223_533330_5B00EAE8 
X-CRM114-Status: GOOD (  10.90  )
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

SGkgSm9oYW4gYW5kIEtyenlzenRvZiwKCk9uIE1vbiwgQXByIDE0LCAyMDI1IGF0IDM6MTPigK9B
TSBKb2hhbiBIb3ZvbGQgPGpvaGFuQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gTW9uLCBBcHIg
MTQsIDIwMjUgYXQgMTA6MDg6MThBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToK
PiA+IE9uIDE0LzA0LzIwMjUgMDk6NDAsIEpvaGFuIEhvdm9sZCB3cm90ZToKPgo+ID4gPiBJJ20g
YWZyYWlkIHlvdSdyZSBtaXN0YWtlbiBoZXJlLiBTZWUgX19kZXZtX2lvcmVtYXAoKSB3aGljaCBj
YW4gcmV0dXJuCj4gPiA+IE5VTEwuCj4gPiA+Cj4gPiBVaCwgeW91IGFyZSByaWdodCwgSSBvbmx5
IGNoZWNrZWQgZGV2bV9vZl9pb21hcCBpbiBxbXBfdXNiX2lvbWFwKCkuCj4gPiBBbnl3YXksIHRo
ZSBmaXggc2hvdWxkIGJlIGRpZmZlcmVudCAtIGdpdmVuIGZ1bmN0aW9uIHNob3VsZCBlaXRoZXIK
PiA+IHJldHVybiBFUlIgb3IgTlVMTCwgbm90IGJvdGgsIHNvIGRldm1faW9yZW1hcCByZXR1cm4g
dmFsdWUgbmVlZHMgdG8gYmUKPiA+IHdyYXBwZWQgaW4gRVJSX1BUUi4KPgo+IFJpZ2h0LCBJIGFs
cmVhZHkgc3VnZ2VzdGVkIHRoYXQ6Cj4KPiAgICAgICAgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xrbWwvWl95eHhvYTEyTjlyTm4yekBob3ZvbGRjb25zdWx0aW5nLmNvbS8KPgo+IEpvaGFuCgpJ
IGhhdmUgc3VibWl0dGVkICJbUEFUQ0ggdjJdIHBoeTogcWNvbS1xbXAtdXNiOiBGaXggYW4gTlVM
TCB2cwpJU19FUlIoKSBidWciLCB3aGljaCBmaXhlcyB0aGlzIGlzc3VlIGJhc2VkIG9uIHlvdXIg
c3VnZ2VzdGlvbnMKCi1DaGVueXVhbgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
