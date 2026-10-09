Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BA7FCA9EBE
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 17:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9E9h3+P+TWEc47en2zxxb9rn4i3BCDwooS14H9DNgA=; b=m5hu0AuoeyCB2G
	PlcrhY9R4GZ0RIIr9YmhoJa545RJbMtzVbKmA6NjlWpoIu7ub7BWt5ESHzduSbfBCVuML/SWagoDj
	7Havgm/UgnjRs4oD/ltnc77nz+jHBQZMWohVccfbLAj9yju4vCRma+33NJywIMu51ePWswGhqq+tu
	kmirGlFs7Ek++kicFFf7MbjRVUOTo7+X0tjPT9K1RrFM7V6oKsJR36NgNZADoAT13njf0U0J5xee3
	zDFhCIslodkbIGxFeq6nNKsMMJmdxECEcDSWiX7yYZImC5aD4aGlJLf4OMs+wmcL1+hOvl3J8gcS1
	srsIjgASxBNu3OKtEe9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFELI-00000006nNB-041q;
	Fri, 09 Oct 2026 17:25:12 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFELE-00000006nME-3AJg
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 17:25:10 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-8ab3d3c5761so43495127b3.1
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 10:25:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791566707; cv=none;
        d=google.com; s=arc-20260327;
        b=BpmmVDyYhMliW9d/vgHbyu/c7BEAYbxUgpqok0H58jY9DJz7B3xKleK18njNWPF9JB
         gnI3q3TLqA90YahiO+raZ1H14sfrkEBnLQtgyEtJuYC/r+Bd7CEu9RhSFHrFXV+HyVvz
         cFhoKRLXLg/OZPncIbAwsMiqPKEIDxRATrOuqvifJfV82LbFPYan5amSOkRk1YQY+9Bz
         xiiOpLwG6fwRlGJNoZIUo5yX9KKXaNxgGuyJkri25LdsArW+EzHIFYRQRd/pmaGEx4EX
         tS9bk9bX3X6qvXihvyMGPZoJ8BlBwqAtOGEpcdQE3kMku6iShMtmp8fjoW6fLqhYp9za
         zCJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AOV4gqFTB4BnPT4BpjZV0TRwwy1hdPuOvpKA+jIuMf8=;
        fh=IMgP5AtoQAGFWQExn4UNot9mdd8Z1aWTfCCXdZBbjqM=;
        b=DOQcx2KuIw+UzVthNCd49TfIbR9Pt+RmelHELYvoXyhwPD+zceyGf9iY/O27Fj1Myb
         EG8McniBHyAEVCXtNcv3Sk9N4FMlH2yCyJZxU+fkWtDRWgbEtrenLFE5lHM6leyTA0rJ
         6ArqPwAbrYb1AYSq59q6ntCTkscKpL69okli1m8ZK9LGm3qoHRezZ/dS4jeFNPhgJuqi
         Hp9Ng+51skfnGF13FcsrMv4qs8iovfTPF4wR+UKHkoeTfS0fq6eMWziRmy83c9cUR6iR
         huTvf//FliAXhXsEPVtEdYg9EoPiVxyP63Z+DOq1TQkd1E0fS5P5T2P2vuCkeVWEuCAZ
         ITSA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791566707; x=1792171507; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AOV4gqFTB4BnPT4BpjZV0TRwwy1hdPuOvpKA+jIuMf8=;
        b=Kd6rMbISBsXfsS/oiUT563dLcetQYW8vir9o3R+RnmAojC+x4ASHqNcb0Ff1QLmpSh
         glMCS2N3uT4bcF+9mmCqvaJI2kK6GewDmqOIJqLqMZllZ6uFg0LtZiyjAwXg+IBYMcYU
         AwYffFSICvIP39SIjiiouZQlG+rYRqpGKtcxzaHXTRkr8ehgbl9oIYQynkVm6Mu2X4+K
         PEdu7rgaqAon8/DIGGBQUMkW6VcbkMSlnWBxRZPN1zk9455Ga3tXZbbs51+tCI66IuPb
         /Yc0czD8GNtCISIsbKfhoypsREbhZPoM1kxghpObDh1mUy1Wf7Qo/B2yG0TPFwkYUND/
         TCmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791566707; x=1792171507;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=AOV4gqFTB4BnPT4BpjZV0TRwwy1hdPuOvpKA+jIuMf8=;
        b=iPR13QGgTWvuB8hJIvWERBLdCVDz09OgSMhayMbTH8eGdFwgQ5NsA0bYgJfgn02LIq
         Z19+LvXdvbOiAIc1cFuWm/j+zRMESyTYHDdpNrrgfk5SK32lOIRkh83ikosx2BFIO7Cz
         /AYpC6jpMPFRWAjbYull6Dmq4sMaRFy1TN/PyHSjS0PDNYwtrUTQjcKzEHlqEomg7ca9
         hR5r9lU9sj2kPR0vR/f2TcCbCkJOQGN2EL47ijnuqtl8EeEKJD6ycsSJegvwv+BnZNDC
         Kb5UudHaPNXvH/OvJqATuq7cCvfbOQm7nrTg++JOJvAPfrrIiKtj06v+VtrikJzY89/k
         AcQA==
X-Forwarded-Encrypted: i=1; AKwUvByRzmvHnUmgjHBKRK5GCUXtaZjNKbkS/K61l3DyBhoAYD/9BJE9NLUwSifJv65gRqoo3M9IjY6PFXw=@lists.infradead.org
X-Gm-Message-State: AFq9FYJfjnBRWBVKVN6yQ2RrWPGUQ/k0E23ylQ9Vs6F1XtbvG+VXygAz
	EE+Yfw0SaP5JcWIKYSpZ0hxAQlOXqwxS6WMVE/5SmmxMF6aot//yTiCyBBcHLf6j6ZioWwc4mUv
	RMLQEh+RoWmlWIAwMUdLht8qVwWWiQEI=
X-Gm-Gg: AYBFou1dH93iyMb6gJrKwF1HlrzAQ9U9QT1Epg5NHJlICLWUfn3K8EnZblPo/UH59dy
	Sc+oMWULXk8zP6TATBngvQ6B0DC+tNehwoyNl2Y0MRrxd7iqofsBqCrLqyPkBEx+ToVVKCDPctX
	Ua48AsUsqBp4+OmzRq6YNF2JQjsCyaAwkJ+TXgBrGC6/WZ8h6OUWR1tw43y6FmeOP4we5O0+JXC
	7sIjQcnUvy88NAFhj0beD+ylLbyTpurhWbTagK98J/ynwxTDTn4grM97c5eF3SXJZOIk3vsSIor
	zntDhFYFqhMfZT6FpZvg/Bje1T5rO3Rh/p42JS4Dh1O6V38XOyBjMsnuT4lhPuefQ6KU72u7+bP
	kAX8rqjPSTgiTPZieHonbYxkZU/qZvov9IA==
X-Received: by 2002:a05:690c:10d:b0:8b0:88b7:cfe3 with SMTP id
 00721157ae682-8b088b7d19bmr3339407b3.40.1791566703722; Fri, 09 Oct 2026
 10:25:03 -0700 (PDT)
MIME-Version: 1.0
References: <20261006102937.10972-1-ansuelsmth@gmail.com> <asTRQ6d0-NYOeHqX@parshuram>
 <CA+_ehUw8fQHGef_L7YPQEf-wwuzP9km=G64Ty3+AkvM=fkNJ4Q@mail.gmail.com>
 <asTVqsqOLb29LY08@parshuram> <CA+_ehUxra53C2N8a0t73nLpS4DkaNSzE3STfhU7j3ZoQ9becyg@mail.gmail.com>
 <asTYlWdkrlci37FB@parshuram> <CA+_ehUyGgaodxKH_RddpaUXS44w=eFpediyQqEYhvJZ8LBKRRw@mail.gmail.com>
In-Reply-To: <CA+_ehUyGgaodxKH_RddpaUXS44w=eFpediyQqEYhvJZ8LBKRRw@mail.gmail.com>
From: "Christian Marangi (Ansuel)" <ansuelsmth@gmail.com>
Date: Fri, 9 Oct 2026 19:24:49 +0200
X-Gm-Features: AclHuK8pxC9pxYotACGYDKYBARoHU0lbaBRjHN1fFMlOwVi1z9GLBZkUdQVGwFg
Message-ID: <CA+_ehUwgkXVoRHhsk_2mfO-6Hpd0fytcVN-7ykgRqoWsrV-b7Q@mail.gmail.com>
Subject: Re: [PATCH v14 0/3] airoha: an7581: USB support
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_102508_802480_C1456194 
X-CRM114-Status: GOOD (  20.41  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il giorno mar 6 ott 2026 alle ore 13:25 Christian Marangi (Ansuel)
<ansuelsmth@gmail.com> ha scritto:
>
> Il giorno mar 6 ott 2026 alle ore 13:16 Vinod Koul <vkoul@kernel.org>
> ha scritto:
> >
> > On 06-10-26, 13:07, Christian Marangi (Ansuel) wrote:
> > > Il giorno mar 6 ott 2026 alle ore 13:04 Vinod Koul <vkoul@kernel.org>
> >
> > > > Okay so we have a cross tree dependency. I would like my tree to be
> > > > buildable and not depend on next.
> > > >
> > > > I can
> > > > a) get a signed tag for this from clk tree with the required patch,
> > > > merge and then apply this series
> > > > b) postpone to rc1
> > > >
> > > > Either works for me
> > > >
> > >
> > > Maybe "a" is better for other phy driver? The pcie move patch is blocking
> > > other airoha drivers currently.
> > >
> > > What is the procedure? In theory just the dt patch is needed, nothing else.
> >
> > Please send me Pull Request with a signed tag from clk tree. This is
> > typical workflow. Is it soc clock on common clk tree? Stephan or someone
> > can generate this and I can pull into phy/next and then apply this
> > series
> >
>
> Just asked Brian since he merged the 2 patch series for the clk.
> I added you to the relevant mail.

Hi Vinod, I wonder if a subset of this can be merged in the meantime?

Just the code move (second patch of this series)
It would unlock sending 2 other phy driver that depends on patch 2.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
