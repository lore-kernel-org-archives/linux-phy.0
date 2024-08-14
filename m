Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16886C52D7B
	for <linux-phy@archiver.kernel.org>; Wed, 14 Aug 2024 16:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yowYC5QHQnUuMrgYFjm5CPOfFDFSmGGXHG3sg39AvDg=; b=oIq0OAscsFL/2l
	EbePdXeJs5XvFkxyD0LdZWBrnRvy5c+Viglt1ITtuROGS/8I1aP17oh86PCk5rNRBjw+a2mEugJNt
	Q2hnvupFF8bbnX5dQCPSR0zkuCvjDxoE28V4xbyj/nxYJYlIOXSOAGRpsXkW8xZsYELdblq6roRD1
	N627qw9y+9EwIAmbVkjPfqxAIKmQKu1917sDEmqIvcDmD2GTsjDQkcGUCnsSJnutZBLQO+qfQnFv6
	0rSu6XDQzChfLF0LM/PRsldpKW6eB0LkjswegiSR+YWpj97L6K8X0+liYxoRa4ZecAlAXS26fiUkT
	SFvdRg1mLltrLIv6KOxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seHIj-00000007kXr-3GFM;
	Wed, 14 Aug 2024 16:56:45 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seHIh-00000007kXF-3PZv
	for linux-phy@lists.infradead.org;
	Wed, 14 Aug 2024 16:56:45 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-661d7e68e89so552857b3.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Aug 2024 09:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723654602; x=1724259402; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qQlMOc1RXgEI/Z1W2yTdzy+viQNXziUCoDnFw4tQg7Y=;
        b=bbTWbEmVtJ0gO6i2e/4lVJ+hZRE1hy2o58yOEejtclIgWKmsg0Z5UP+YW/gun6QyAa
         3CLfl5LphmkSmxpqEod1mb5/sfU6eKfbD/p9Ja8tQalNcOfGmMNpnjIpnPDhXsE6ezSK
         fkFE+hEcU3kNRr/pP3SaZnOzw8AMelIkavD/ihxYioT1YCilKmQphBf5vEgd4q7R2A0Z
         1IlkQdJKuySCYKxvzshWwCWNOm6hq21oxvU0HOuv/Rd6IaRVzVWELgUcSyGohVi+uokY
         rjyE98iGuU3jjq2qln6xT+bX65iJnhpqtd0uLoiGiQFMeuz6lXytungygqDbGeVmiOd4
         ++RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723654602; x=1724259402;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qQlMOc1RXgEI/Z1W2yTdzy+viQNXziUCoDnFw4tQg7Y=;
        b=Ott0wQGpfEfXiDieSuP1Xkq1fozH48KwWaACGNB6S3DcPdUTN1ACIxqfEY1OJ0e19+
         O3mcTfm/5bUOwNZrZJgHGcYzMT6dlUEy60Dqd4ZGKyPtu3N1Mmg95z9ytRQdJe8hhog6
         64qM6ZocgDelAEYeUIa4bMcsQ7I5ScZ8Li/EbitMGYbqJLgzkrEM6MT020tYtdWhg2vT
         Y20+l8cPKcqVKtQj4LWxL9IZ1Dxltsn39+361K46MxMC5BgBYEMiNtFe3xVtM77BOFSK
         Kx7FN6IWSp817j3zYcuv9VIiJERrhDtbVPVtzEF03kYTivdpnmha9fSn3vgUqmkY44wc
         3xnw==
X-Forwarded-Encrypted: i=1; AJvYcCWlj5401/mDJM2J6MTUySJgV8PAGQX0PyCaWopfy9EASvWBTIgsLzOM9UTywk60lYu4voIN/Yc4aoHVZi97NfJj2pew3wTMEQNJcvCZtA==
X-Gm-Message-State: AOJu0YxI796MtjaOP1GUYWP7IjhRpTegFc9xjUJa1TuBU9zaXXNw3eqz
	pwTmvC4fDco+rzsZdSpB7vXx89Jc6nOC+QTZfVP7xKbA21fG5IL3lL8o7G0F5vbuxcLH/5Pr9F5
	Tmm8h3FImmmtBcYZdvOxSrNz4+p0=
X-Google-Smtp-Source: AGHT+IFITVwqIytbC41TtrGUFCTh1I6Ia9wAgWzzSZsz2WvL3UAmAXNXWe+UUoRM3D9mPKUYr1j8dRhQbEs79AGlMmY=
X-Received: by 2002:a05:690c:4e0e:b0:64b:82d6:75b9 with SMTP id
 00721157ae682-6af1c990341mr2123607b3.7.1723654602276; Wed, 14 Aug 2024
 09:56:42 -0700 (PDT)
MIME-Version: 1.0
References: <56a52c81-68de-438d-94ae-9decc799d824@kernel.org>
 <20240808191735.1483572-1-ilordash02@gmail.com> <CAGCz5Hk=mSjQ1eFWstQQu=JZUkavJ_mRhnp8DRELUXP_syq4Zw@mail.gmail.com>
 <eb04b684-eccd-4952-a310-022d00b50a55@kernel.org>
In-Reply-To: <eb04b684-eccd-4952-a310-022d00b50a55@kernel.org>
From: Ilya Orazov <ilordash02@gmail.com>
Date: Wed, 14 Aug 2024 19:56:31 +0300
Message-ID: <CAGCz5H=n_OOeTTNon2f=D97y==ysgXMijCkB5Nb2XVTDTQ6i4g@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Aswath Govindraju <a-govindraju@ti.com>, 
	Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_095643_872921_F75C29B1 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
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

On Wed, 14 Aug 2024 at 12:03, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 13/08/2024 19:14, Ilya Orazov wrote:
> >>    '#phy-cells':
> >>      const: 0
> >>
> >> base-commit: 6a0e38264012809afa24113ee2162dc07f4ed22b
> >> --
> >> 2.34.1
> >>
> >
> > Could you please review my patch?
>
> You received review. Why do you ping after few days?

I have uploaded new patch version and fixed all dt-binding errors, so
I thought you might want to review this updated version.

-- 
Best regards,
Ilya Orazov

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
