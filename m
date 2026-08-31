Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D7B2C61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 09:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6VEiBcEWGmrbLT3ltLahHq/99SkpImCEEHDCjqMD2E=; b=o0GwvQqJ60CANA
	ve3gm8HQYFf15a8FiAvC0/78GjY0KiCgmY5NIh5TpyET+zUOwn1UuHiuGJ9Ah/N4ot9Bxb7F2Wp0h
	dTlUmpx5IQ4vijyqMqJPMn6QygPt5QI3j1f9ujxVN3OLebVYXT/Pl3YXnVdfaUWea+4EMFhOa6IjZ
	J7gKQbEZxXeCK95cVRSgwmxqsTOGqQQM/S2JP5y5iIjYUv+Kd0ObPxgDAO9Enby/tR6qPDd3Q3rez
	5kX6CbmnNSxJXKTdSoZGn2SiNQ0b4J/ZoqkuO8sirOlZdXCLVIX1mAp9asEgvia0OMcRqF50/Mg5+
	0nBg4stF9/HVMm4emr4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0yZh-000000092mI-3V0X;
	Mon, 31 Aug 2026 09:45:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0yZg-000000092m9-3RPC
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 09:45:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CD7FC60200;
	Mon, 31 Aug 2026 09:45:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D23681F00A3D;
	Mon, 31 Aug 2026 09:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788169507;
	bh=/pqK5jiaMpzwet2GuvEIt2SypcJxmlRUAsZAiwVepKQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=TOJ9wOqmsJk/NS5EFk7kQ1+T6sMcyXFkhdo7zwHkOxVKvYBdbdJ3VOOVWJqMS9ET4
	 pFZO2fG7TdbKnq1bkS0K6rF7wwY/aVeKZnqwE9qC+bkzwXTa6Pz7eIxphEUnVg/EnH
	 6kFo/47t7UJ73Qt9i/vdM/rpyvk0ge4AUrhq//vCyYlb99u8linn82WMiNz58Sdv/o
	 Ij3ve/t6MeD0wYUb6e5IExUldEr2Q67gTyf9yXfYRazi46TbOTMG8+3Jn6mdL8I0UB
	 +1qkZyQfTSaGJZKri9ohMxZCrFtWTAZfzlTlr3nXmCAYyBgyPm1NrjL4rQQ82+0mIv
	 6pJSKyBpj3Mdg==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: Add sa8255p USB PHY
In-Reply-To: <f9320dae-6436-45e1-b99e-f49115b6279b@kernel.org>
References: <20260722-phy-qcom-qmp-usb-8255-v3-0-e789070b48f7@kernel.org>
 <20260722-phy-qcom-qmp-usb-8255-v3-1-e789070b48f7@kernel.org>
 <f9320dae-6436-45e1-b99e-f49115b6279b@kernel.org>
Date: Mon, 31 Aug 2026 11:45:04 +0200
Message-ID: <87o6eimxnj.fsf@kernel.org>
MIME-Version: 1.0
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

Hi Krzysztof,

Thank you for the review.

On Tue, Aug 04, 2026 at 10:08, Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 22/07/2026 15:45, Mattijs Korpershoek wrote:
>> +  power-domains:
>> +    maxItems: 2
>> +
>> +  power-domain-names:
>> +    items:
>> +      - const: transfer
>> +      - const: core
>> +
>
> Same comments, why isn't this following established naming practice for
> sa8xxx bindings?

I've replied in the other phy driver review at:
https://lore.kernel.org/all/877blx2bga.fsf@kernel.org/

I've also send a new version for those bindings which hopefully better
document the power-domain-names and their usage:
https://lore.kernel.org/all/20260831-phy-qcom-snps-femto-v2-8255-v2-1-dc6197ffde1b@kernel.org/

I'll focus on sa8255p-usb-hs-phy.yaml. Once we have something that's
acceptable for usb-hs, I'll respin this series as well.

Thanks
Mattijs

>
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
