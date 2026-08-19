Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE55BC5DF81
	for <linux-phy@archiver.kernel.org>; Wed, 19 Aug 2026 20:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Zfx76CMLtDw6Wzt8fXoX/sd1GOqkwgXurzIbaboF4A=; b=bsbh1Mz32Yuqi9
	QyxXpojAspWhWRlQqTM5fDxzYZV5oOyjeMilQB508LuFNw4p47QLwKrmyF7blSoSuc0raHIBQZIV6
	F7pqZn6RQwYdSg6jb+siKMWPwGi6PLgrQoRlpivDglKopX4MM71xJMJNAL7mj2gKakG5EWyd14mgI
	Fh47Yv6kz5PNCDxqPQJwBx6+ZnSOI+BImZ+85P0z37bLylIp/QHBZFRgo93blMn5QSiz2+zcQ2MWE
	DcfP7uzRZOYqYDus8o6oU4FsxMQbycy2pZtJdcJ1sEezhsLd1+0mNgcUWySeqndGri/RcgIQ3d+KH
	TdQ+G6WuJXcbnM/b5CmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwmSj-0000000AUdV-03cr;
	Wed, 19 Aug 2026 20:00:37 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwmSg-0000000AUd6-3u68
	for linux-phy@lists.infradead.org;
	Wed, 19 Aug 2026 20:00:36 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-2d58efc7356so15567755ad.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Aug 2026 13:00:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787169633; cv=none;
        d=google.com; s=arc-20260327;
        b=k1uF6Ku9umUEv6hvKWVEjN/VPraGVycBsEVzfndXOM6reFJx8bHjifiN+KoA5vhQTO
         IYExyX4G3hhiRPaEQIhIu5l8kG1qs35njU8N8//RrdKO9TCgPz5hiPl/SkcxuSvs44FC
         5gTp5lKTydL6sxxLNJjTjxIB0Xl/s+sMlCGo5q/4jzKW+GLIUWOzHmbaMgX7azqCXid0
         O0iLI9AntxLUAVxMAEssPeC2G49vXRiZFLmya+Q9FwTGClbWHy/TGisvbsDHnuhe4yJa
         aXEyeZ0kya5mRSGfP6jG/6ZhiJJsN66UYCxo2kKNfPu8e96AZEU45V3tmWWnQdatc8I0
         fGkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vIDvQ1BYL5+L/acX8gVrRxrqnuz1ZgyTKSzf8gbt7No=;
        fh=njx81bgxZarfkjDp53IbsNHq4QSvOIkFV4iv3QIZYcg=;
        b=cagCSgbZ5pT1LqmuOUQ8dKmL9Jj/X3L3JolPaqgFUXEmo8lUg0EayTnSH1lbVvdhbV
         Z5PoPMBZ2C8jic81HnH8DBCf/Ili1zSWVW4LrjD9+HZf0dIWjqRWG50p1XX246bURafG
         Yosk5qu11rvofVGYsGHiEKHq1++Ru0j7xPe5ql8+JPbC8JS1QZmD4PQMSl0bwuoAxmfM
         7//bxp4w+52f0EFDhYBkydgkft6P0xB5zOZCl3cqUO5E33vOtmcFNnewWA+Tcclg1lsI
         jrPSy40na8IK8pmg1jXALOjc3acJ2c0Ed6CXc/1GvP/Ebbcf5AyLKyI5/f3A5XuiywnL
         TpCg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787169633; x=1787774433; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vIDvQ1BYL5+L/acX8gVrRxrqnuz1ZgyTKSzf8gbt7No=;
        b=YRB68o+XQT1wtTOyMHmxvXi934hq4R9NzsEcCzypyATVF3hMwpKz1rSg4rqtzBvZps
         HtZrYk0deYmo0CiA/5XjGQv5UGuHZMxbbY8NLIs89ik7/PldaVmH8ALYo8XWQ6TTvymB
         aHTGu9gir2pBq+BWlPPI5eU1iXvADSx2CBoy/AazPV38MfebHctYiJ+ro7jaqmsg8vtV
         LSrkhpRPA86NKY3gg4TzopY8f1ENs1tI2V6i4Xm+DKw72kKRe2986rJxerK8WdZ0l0lt
         +vwE1eBcM6XgZWxicpEiKx0f4Y53k2gyS/x7ncBJnX36f6843qowS8kWfnv06QL9op0I
         UVGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787169633; x=1787774433;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vIDvQ1BYL5+L/acX8gVrRxrqnuz1ZgyTKSzf8gbt7No=;
        b=N5PAc/ryYFV/DbgPfoySDLS2csYKTGuVNZOoV6VgLszKsmgJWHI0vzc89HwH9d3nKu
         /lvEgNzftmDl/fB6H9WDN5yBJZjaZYe/wMKPPSzEUpj21afggariXdXNvQvYL0RCnJNI
         BWGZ583CAZVObZMiDmXjZFz99mNWk0IcJcvo0kQ71XL7wE1zp8uYaOtyIaWvS6u1R0yW
         VW3JKgbt25fEWm4OQXAAsFIuBlH76GxaioZ00unns0ttVh9M+Qjv4wSL1bOX1cpikDTO
         nKkYRG3tLYQg2AOw012RvjhvJXebcxxOS+uUChAii8+rFbg0gGrHQL2QFrOKthwaCctM
         nFKg==
X-Forwarded-Encrypted: i=1; AHgh+Rpa2WTbCq6KK0gfwZCD1TrUbtYhkDiDbO2MsQ681yh3/INiuDA8guPBoP+y+wwQkcoaAu/sl7SNCUc=@lists.infradead.org
X-Gm-Message-State: AFuF++kT5Lbqzsb4X8VhVvVrKQMmWUzWaRwwPmc/MMHmRzQ7IdhQ9rUy
	emPUK4IHYy9BHC5ttRBJCRxKnSb7M/3iQoy0XtWquC8BUxygm9DlpdNhAUwHqNhJK4wFpqHDI9V
	9+AExzuXHCDhXV7/UJ5BbPgPmtqU9Vpc=
X-Gm-Gg: AR+sD12IrP+/dUYi9mIzHR/drniRLXxK9GHMEH2RHhFrV8ZRe0lRT5jEcyNODJDi8E8
	ZEVsRff5qdx2Pkn/TE7QxDZGNhsVp20bZLUMrySEwCWL+Pu+tROdy8C0jKzQ5LC9M//h+Y5lEad
	9fWq2fkFdhMygURbB0AISKLa7DIjfOJ7n05CB6Xno53bvesjwL86F5mlLbOpAJAwYEoNbycOgft
	DRPs+lMlJ8d8M65S1N9MDX4Y+GRojpLsjtzV0jugrRTdnTUP86iyuux1ncl+MmR4VM+2UCH3Gii
	50I5Y6PxDUQyAeP7vEHe+IgnbG9pAw6AkYlNvFc7OHVOjcrtYPU8lwfRRZuIhbJ/pI087TYOU4L
	YFE/tHJucLd1v551JhLwChoiGLrU3nyfOCcQj6YKwJ6bES64nfDTjzlfI8gDC7gA=
X-Received: by 2002:a17:902:e541:b0:2ca:ecf6:910e with SMTP id
 d9443c01a7336-2d5fd38fcffmr113795575ad.0.1787169633345; Wed, 19 Aug 2026
 13:00:33 -0700 (PDT)
MIME-Version: 1.0
References: <20260808171321.133028-1-jesse.casco@gmail.com> <9fab8686-d0fa-40df-a6d0-75349861d78a@oss.qualcomm.com>
In-Reply-To: <9fab8686-d0fa-40df-a6d0-75349861d78a@oss.qualcomm.com>
From: Jesse Casco <jesse.casco@gmail.com>
Date: Wed, 19 Aug 2026 16:00:21 -0400
X-Gm-Features: AcwNN1VvGTpq-Un825CS9Bo5iwfRmFgQWXNI8QlDt_2Z2tzb9vZb1doA9jCY3Ms
Message-ID: <CAEaxeoRkYMQagxz84zNL+L4iO3s-KZFDOQ=LLU9UmPnO4o4hhQ@mail.gmail.com>
Subject: Re: glymur eDP PHY (v8): link trains only at HBR3, all lower rates fail
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@linaro.org>, Abel Vesa <abel.vesa@oss.qualcomm.com>, 
	Yongxing Mou <yongxing.mou@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Clark <robin.clark@oss.qualcomm.com>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_130034_988617_78CA1134 
X-CRM114-Status: GOOD (  12.60  )
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

Q29uZmlybWVkIHdvcmtpbmcuIEFwcGxpZWQgcGF0Y2ggb24gdG9wIG9mIG5leHQtMjAyNjA4MTks
IHBhbmVsCnRyYWluZWQgbmF0aXZlbHk6CgpEUENEIDB4MjIwMSBleHQgTUFYX0xJTktfUkFURSA9
IDB4MTQgKEhCUjIsIHRoZSBwYW5lbCdzIGFjdHVhbCBhZHZlcnRpc2VkIG1heCkKbGl2ZSBsaW5r
OiByYXRlPTU0MDAwMCwgbnVtX2xhbmVzPTQsIGJ3X2NvZGU9MHgxNAoyODgweDE4MDAgQCAxMjBI
eiwgMjRicHAsIHBpeGVsIGNsb2NrIDcwOS42MzMgTUh6CgpUaGFuayB5b3UgZm9yIHRoaXMhIEhh
cHB5IHRvIHRlc3QgYW55dGhpbmcgZWxzZSBpZiBpdCBoZWxwcy4KCkplc3NlCgpPbiBUdWUsIEF1
ZyAxOCwgMjAyNiBhdCA2OjM54oCvQU0gS29ucmFkIER5YmNpbwo8a29ucmFkLmR5YmNpb0Bvc3Mu
cXVhbGNvbW0uY29tPiB3cm90ZToKPgo+IE9uIDgvOC8yNiA3OjEzIFBNLCBKZXNzZSBDYXNjbyB3
cm90ZToKPiA+IEhpIEFiZWwsCj4gPgo+ID4gT24gYW4gQVNVUyBaZW5ib29rIEExNiAoVVgzNjA3
T0EsIFNuYXBkcmFnb24gWDIgRWxpdGUgRXh0cmVtZSkgdGhlIGludGVybmFsCj4gPiBlRFAgcGFu
ZWwgbmV2ZXIgY29tZXMgdXAgb24gbWFpbmxpbmUuIEl0IGlzIHRoZSBsaW5rIHJhdGU6IHRoZSB2
OCBlRFAgUEhZCj4gPiBhcHBlYXJzIHRvIGJyaW5nIHVwIGEgdXNhYmxlIGxpbmsgb25seSBhdCBI
QlIzLgo+ID4KPiA+IFRlc3RlZCBvbiBsaW51eC1uZXh0IG5leHQtMjAyNjA3MTMsIG5leHQtMjAy
NjA4MDMgYW5kIG5leHQtMjAyNjA4MDcsIHdoZXJlCj4gPiBwaHktcWNvbS1lZHAuYyBpcyBieXRl
LWlkZW50aWNhbCAtLSBzbyBub3QgYSByZWNlbnQgcmVncmVzc2lvbiwgYW5kIHRoZSBNYXkKPiA+
IDIwMjYgc2VyaWVzIChlRFAgbG93LXZkaWZmIExETyBjb25maWcsIHVuaWZpZWQgc3dpbmcvcHJl
LWVtcGhhc2lzIHRhYmxlcywKPiA+IGVEUC9EUCBtb2RlIHN3aXRjaCkgaXMgcHJlc2VudCBpbiB0
aGUgdHJlZSB0ZXN0ZWQgaGVyZS4gVGhlIHN3ZWVwIGJlbG93IGlzCj4gPiBmcm9tIG5leHQtMjAy
NjA4MDM7IHRoZSBtYWNoaW5lIGhhcyBzaW5jZSBydW4gbmV4dC0yMDI2MDgwNyBhcyBpdHMgZGFp
bHkKPiA+IGRyaXZlciwgd2hlcmUgSEJSMyBzdGlsbCB0cmFpbnMgZXZlcnkgYm9vdC4KPgo+IEkg
bWVudGlvbmVkIGluIG15IHN1Ym1pc3Npb24gdGhhdCB0aGlzIHNlcmllcyBpcyByZXF1aXJlZCBv
biB0b3A6Cj4KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0tbXNtLzIwMjYwNjIy
LWdseW11ci1lZHAtcGh5LXYxLTAtODE0YjQ1MDg5YWM5QG9zcy5xdWFsY29tbS5jb20vCj4KPiBL
b25yYWQKCgoKLS0gCkplc3NlIENhc2NvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
