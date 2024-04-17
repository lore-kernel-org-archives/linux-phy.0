Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4286BC4345F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Apr 2024 06:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yyh1PLF3wQKDqPzVqtAwzC67a7FIRcSUFdJ//UXoRDs=; b=Sz7/HQ2FHCB9SY
	L0HH1h/WS8stA/6FuRcx1RFVrA4HEchJZRWPaW8dkOHKlYcMNQZBlkNi2xdGh+1smzymLUjSgPoV7
	IFrADaDCNoFwWuQnSSCOg4pdlGToYWehqMc5g9q0ARE9TQfzs2STWvaHHE8OK6Xqe34C4wKjc7Iir
	Z7K1s1WdsIYWJCmJJ/rkLrLnGYvOmBE1jKdD+XMtbjQZD+u6YBJfqzq/Ie2NjhSnHsLeZiSrTpCmX
	cYNbYZYArqgi1YraF6mWg2ZNuHswQYsrRvB/aZN0DE9qLHkZTkkJhGkRLCeJL/3WhX5n6lx7p/KlU
	948r/0T4uZZBhq9Dny6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwz7n-0000000EuZF-3vJ2;
	Wed, 17 Apr 2024 06:50:31 +0000
Received: from outbound9.mail.transip.nl ([136.144.136.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwz7k-0000000EuXs-0Rbi
	for linux-phy@lists.infradead.org;
	Wed, 17 Apr 2024 06:50:30 +0000
Received: from submission14.mail.transip.nl (unknown [10.103.8.165])
	by outbound9.mail.transip.nl (Postfix) with ESMTP id 4VKBPB0Mf8zTPNMs;
	Wed, 17 Apr 2024 08:50:22 +0200 (CEST)
Received: from herrie-desktop.. (110-31-146-85.ftth.glasoperator.nl [85.146.31.110])
	by submission14.mail.transip.nl (Postfix) with ESMTPA id 4VKBP917Nqz2ST2q;
	Wed, 17 Apr 2024 08:50:21 +0200 (CEST)
From: Herman van Hazendonk <github.com@herrie.org>
To: dmitry.baryshkov@linaro.org
Cc: andersson@kernel.org,
	benwolsieffer@gmail.com,
	chris.chapuis@gmail.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	github.com@herrie.org,
	kishon@kernel.org,
	konrad.dybcio@linaro.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	me@herrie.org,
	robh@kernel.org,
	vkoul@kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Date: Wed, 17 Apr 2024 08:50:20 +0200
Message-Id: <20240417065020.3599755-1-github.com@herrie.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <CAA8EJpo=nd8ywUzz2e42p7WAyuFm439yvNf6H=MD63LCV0xTnw@mail.gmail.com>
References: <CAA8EJpo=nd8ywUzz2e42p7WAyuFm439yvNf6H=MD63LCV0xTnw@mail.gmail.com>
MIME-Version: 1.0
X-Scanned-By: ClueGetter at submission14.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1713336621; h=from:subject:to:cc:
 references:in-reply-to:date:mime-version;
 bh=yitk1PINuG+ZttWDjmHS+5CUubvYDjED2MOpSUGliao=;
 b=rkwPnbcaVbl+/j7vxyR4afo2tfgaVt3k5zO2AvGRlhzkPONCWrLPe4gUiCEe32ZY9aDYMJ
 4j0VAiiYxB+cC3qUwWhoWx74XbrUYLzwSvo+c3hl4EH5bFalLOyLmcs/mOXXppNsGC7arg
 Zl5y3oRs2PMbtBYakdaFuKLA3C7x4zDjczQeOKaE9vLMrDPzI4Ms3k6bOYS1UnQniGcImK
 6qH+0YGNgclTXewTp52AOSWd3jp+MBltoMoRs4thW7+uVPZ/6gWlG8Ac2SJStO0Pyp2XGT
 8LPe2kelD5JtYpH2QsU2YSwqZG7/NGJKQj1EKBsJY1F7PuiuynIgR+wa5RvvSg==
X-Report-Abuse-To: abuse@transip.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_235028_855209_0B255CF3 
X-CRM114-Status: GOOD (  13.41  )
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

On Wed, 17 Apr 2024 at 07:52, Herman van Hazendonk
<github.com@herrie.org> wrote:
>>
>> Adds qcom,usb-hs-phy-msm8660 compatible
>>
>> Used by HP Touchpad (tenderloin) for example.
>>
>> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
>> ---
>>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
>> index f042d6af1594..ccf23170cd17 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
>> @@ -15,6 +15,7 @@ if:
>>        contains:
>>          enum:
>>            - qcom,usb-hs-phy-apq8064
>> +          - qcom,usb-hs-phy-msm8660
>>            - qcom,usb-hs-phy-msm8960
>>  then:
>>    properties:
>> @@ -41,6 +42,7 @@ properties:
>>        - enum:
>>            - qcom,usb-hs-phy-apq8064
>>            - qcom,usb-hs-phy-msm8226
>> +          - qcom,usb-hs-phy-msm8960

> This should probably be msm8660 rather than 8960
Hi Dmitry,

Thanks for the swift feedback. I'll send a v3.
I need more coffee before doing this in the morning

> Note, nowadays the rule would be to use qcom,msm8660-usb-hs-phy
> compatible, but I wonder if we should enforce this for such an old
> platform or whether similarity wins.

>>            - qcom,usb-hs-phy-msm8916
>>            - qcom,usb-hs-phy-msm8960
>>            - qcom,usb-hs-phy-msm8974
>>

I plan to send more patches for the msm8660, so happy to understand what
is the preferred approach, because it doesn't seem consistent.

These are my first patches, so learning mainly from what I see in commit
history (which might be outdated)
It's indeed ancient platform, we just would like to get HP TouchPad
(tenderloin) running with a mainline kernel, hence these patches.

Best regards,
Herman

> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
