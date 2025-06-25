Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63EEDC7115C
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 16:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Mjpc0x6hPl9lq7wrpKFrbJAikIRxGoL7+q45qpMOGM=; b=stU2S3s6Atd9NC
	RIi2KUaJCkj0G6U/Vf3nIZVF5xM38kfkVjqwnrEAvoI6bRqAG32AUmGrwWpf5gReWiKVjkqIiCzdv
	wVT55lPhz7wh9b5eI/ZL4f3UVN85Txiphc6xsoASvFnS81fivRiqqhly3u86SxnIkTh9n4MTruKxN
	TN+aumXnkOLNXjNMEELqktJIJ+334GTxfUu2ZWd6kXXZUxaf1ju9NUrgvaxQ74Nujj7jAS0f17UIg
	hU/zecDBxE96ZVgLvB8YkQO0UGccWG80x5MvT8C0K7Y3YHh6McM8RM7GuKCy0mirEB+goiYjIej4y
	aSJ4rU6rqY/iR8i3EALg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUT0q-00000009I5t-0Diz;
	Wed, 25 Jun 2025 16:30:16 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUOit-00000008YO9-3To8
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 11:55:29 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-adfb562266cso297795566b.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 04:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750852526; x=1751457326; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ele4kC/bFjkVABuTlMtPoVal/q9sn4Mx7Xjke1CK0u4=;
        b=xTNttUzI9oJozKFKi7prontDtEDjhLwgEc63LKIzQ0Jt9tHyYYW9IQuh6B1mNOu80A
         GTLdbOUiw4sedSIoAXgiuy6ZaoK2zBOG2qBGOXRoz9HpiACCdciblt7KjUKoLkEqVUAA
         htezUNlQj8QhtBDcqvE/hpSfwO80uS745yYHhbdB5LnXecw0GcCKG+0Nfq50w7TFdpW9
         J7KCxn7mDPxK0dwEiyx3c09uRz+AQpFuohM/+D9ZVWmMC2jQX3eODqhpAbgi3H1EUth3
         zP9K9eBXtfmk5FkAQh9ka1OsBLtCwkfbOGeVK5aa24e8ShZImAoTGNlf9XGN59oMmYeY
         zmUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750852526; x=1751457326;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ele4kC/bFjkVABuTlMtPoVal/q9sn4Mx7Xjke1CK0u4=;
        b=qg8qWqCe8X7s7veENpMsaoGc3Tu4pZO6xK4rCpWkD+lRWuvsP8sc04Tso2xF/xwYoI
         UeIr9nWp2l00QH2zaNV7TSr6/nAG0YaZwO1rBie2Hu/pquK1k9+jZE3SYAoIXim7nkHf
         WjubtZEqGJ/1JTqVv2KAIrZgDZvnx4JxQXLnFWAFUt0uEdlVXcslLSROk9UrIaV8Rnqy
         eQCqgkm9+WDmZumULZKNwiKX/vRvQf6l7Rc+oGoMilmxBUepx9jCcYp2gNxKi9myDNK/
         zvufHaUhCwiFu18snap30zXwkjtmWtmna9GkNOGbIvRHPUkuE1GG7NNsu8R1cW3Uadp7
         HNWg==
X-Forwarded-Encrypted: i=1; AJvYcCXjKPOyrYtysgreMY8iDpXPBjIKoHq16W/RS37sm1mQhJmPnFtzt5vXFsQf0b/FOTkE/oMCfG3zZrk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZcRhNoy9dtfjPQNGvITxz1Ljxhr/WU6PJ8xICfseAp84HpHgl
	DFRx4UEwh7nApD8K4Aa8beXF+qBLtEenSlIlfe/tOi8cEhF6vm2tZ6Ak/lu+GL6QMCc=
X-Gm-Gg: ASbGncuDGPR0+9WdtkOLxUkpKDsHfHcN0ZoLwdiVjJ9/Szwu6F8vuQ9t6r4MpqYyOhH
	oc4n/sno6SNL2i4RE2HOwp4sRviLDsftKKP1MtecvbiisQgPawZtm5mvUaV7GLyU92JkKs30pMi
	WcELuM9+Adc2P7yo0SP+cPI/G45WBlzh/pKdxuleIjVTaI9irIBUdFdcxDEyCfnEfXrphODjD6F
	Qhl6aR7U0ID2hmbbSoV3kjRMv4+k0fm1Jc+o1YNxNBU+6m/JiqjUfaKwiXfwpcoxuJu7o3AQbdO
	PlIhBtrHaYU+GVJSq5+r0Uz7EmP0kVVgZFMhkE98v28MDXFBPjlqvHNYb+5rLRb88BbcxeSXPQ+
	jIDpUvjkQ7w8p3xsgBsZAYJBJ9Elkx8M=
X-Google-Smtp-Source: AGHT+IGHwtU2WcLOLeMlMlhviB+W5ro/PgSmY8OoYgsUjPuqlDw7Eu44hCDzY1aMqXqaPDEZvGOrnQ==
X-Received: by 2002:a17:906:d92:b0:adb:4917:3c10 with SMTP id a640c23a62f3a-ae0befc3ac1mr209592966b.60.1750852525989;
        Wed, 25 Jun 2025 04:55:25 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0cb358618sm29256266b.102.2025.06.25.04.55.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 04:55:25 -0700 (PDT)
Mime-Version: 1.0
Date: Wed, 25 Jun 2025 13:55:24 +0200
Message-Id: <DAVLF5WB0IZU.3EZCARZSQO050@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-usb@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: Re: [PATCH 3/4] phy: qcom: phy-qcom-snps-eusb2: Add missing write
 from init sequence
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Wesley Cheng" <quic_wcheng@quicinc.com>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Abel Vesa"
 <abel.vesa@linaro.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
 <20250625-sm7635-eusb-phy-v1-3-94d76e0667c1@fairphone.com>
 <4d215791-35da-4139-9cc8-33da5d46469e@oss.qualcomm.com>
In-Reply-To: <4d215791-35da-4139-9cc8-33da5d46469e@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_045527_876799_2ADD334A 
X-CRM114-Status: GOOD (  12.25  )
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

On Wed Jun 25, 2025 at 1:51 PM CEST, Konrad Dybcio wrote:
> On 6/25/25 11:14 AM, Luca Weiss wrote:
>> As per a commit from Qualcomm's downstream 6.1 kernel[0], the init
>> sequence is missing writing 0x00 to USB_PHY_CFG0 at the end, as per the
>> 'latest' HPG revision (as of November 2023).
>> 
>> [0] https://git.codelinaro.org/clo/la/kernel/qcom/-/commit/b77774a89e3fda3246e09dd39e16e2ab43cd1329
>> 
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>
> Both the original and your commit messages are slightly misleading, the
> HPG (and the code which is indeed in sync with it after the change is
> made) only sets the value of 0 to BIT(1), a.k.a. CMN_CTRL_OVERRIDE_EN.
> You most definitely don't want to set the entire register to 0.

After reading your message twice I think I've got it.

Code is correct, but commit message is wrong (it's saying writing 0x00
but it's not actually doing this in the code, just setting the bit to 0).

>
> With that fixed:
>
> Fixes: 80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver")
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Thanks for taking a look!

Regards
Luca

>
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
