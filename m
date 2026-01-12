Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD623D2503F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 07:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuM3Q/pjBQhmFPSoFMKx581AObUxI17jHl5XUkbAkGc=; b=AvBCzgGMR42eSR
	QuYNp5weSPp6gKmFnKjMqrxvnM4Z+DArEx06++wnG6JRhwTknky6jOr/raSkMO9pJoedXLrvGtaS9
	qxN22QaV0h39VQ0Q+aQRnM2iV77Et5RSoIOgssUlJHjdIeMXuzgko80i+Psup1KHLyvwlfnBSnaWz
	ld4tjZI9rZJzRfscLjHN49oyrSksR7Ykji1/0ofKZt+ySM8LmBpWWyOwwl+JNabVVKwaTvFJWaVQC
	XygupqxSwkOTx/qw00Mwy9+wkQlaPCkLxcVrM5uhT3k0vVfB+AqlWPhxEuORNz7NYXSWgt81g5Vg7
	jV4WulsibFqjhyptrqpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfCn0-00000004w2y-1KBU;
	Mon, 12 Jan 2026 07:56:38 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfCmx-00000004w2P-38xW
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 07:56:36 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-650854c473fso591116a12.1
        for <linux-phy@lists.infradead.org>; Sun, 11 Jan 2026 23:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768204593; x=1768809393; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gf3lltzd84X9dIvu2pA3a5Jkaw8Zcskzh0E99P0ou0M=;
        b=x2oWFG6X1Apfp+nZN1omUcGkWabwnAkrpRVeaRn91MxWMcUbQboW/0CEpXtNlJHumA
         6bslNawnLhLlJ/RYeCBrbV9D6u3POwJr/6XjumRD1L59Zfa4tvrvyZ0UXG5egxbrkf66
         FhfQNZJFdUkv/RBjNGo3AMXtNG6j2FaiXPDrwJlAVdVx/oTP+B/rg1TVRzUgUs6lv6wY
         LCs2MYelRdRf7fMkhxYo08ffmIbQ/YUqyd1b+FTOJJ1nvw1oFFIKVOXBzM2SU9H+3shL
         0DRpwruR6g4jdT1+zPdXlLF+qabdKwQCR3u65cr6yNMahd9xxQHzGHpD7uxxuRtfZ6ax
         Gh4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768204593; x=1768809393;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gf3lltzd84X9dIvu2pA3a5Jkaw8Zcskzh0E99P0ou0M=;
        b=Cp4Uyc2oB+oN2PCwp+bgY1b9YNA5voOWzXSLVsq1tABOAKZZPRpxf36T43yFb4q7Tr
         weiN8ZFyMRjAW4D6FLaSKCUfZgE/jIHW8KSniPtHHBtElig1nn1usb+fLSJ04sm1Erxc
         i0LMrS4TTKHkpCSRryvwzlDVZgyp0WFQHbxVcRZFuOKPvwgezXz1RsZK6QBYOvrjWjvU
         0wiGj3zWoUswigkz+vaG46AtSeLCTCfuMRspB4hYUIBfWeik2Hppxh2EHrxQyKZnpgdB
         feivNckdSh27U1CBKatHuc3sJnYbW9iXv8Scf37koXaVJfLjC8pHEIYP7k8rXESh2IYQ
         Z4fw==
X-Forwarded-Encrypted: i=1; AJvYcCXJpVzT++nGNX7J1axODSfV8Axflk8rTBFi4bpc0f7WQhDW2cqeR+wjreApHVdt/ojLJ9Cq+rng3nM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9PruaxGRB2NBa2oheqkroBs3zMOKG84aavF7i8wF0xWLIgtW0
	wI5cyqUozu7qiYqBJtKhQ0tcLCZrmp51yh/reXSUvFNHSN6m6lG5+uUhi/OSUEQgd9s=
X-Gm-Gg: AY/fxX6qJDljO/o/Wk1W2/S9s6mUZtbOljtXxK7YhHp7X6oKiJTKuhVbPLadvIwwzKs
	eWuaymoAcnYRtulP6Hl06wjiTqe1YefK6gLwFvZhprTR1UFvHFE3iE37JjsYsJ0Xhuv9SIMGURo
	lnspGKdJakoZrniYt9+TqASyzEkpsbnMESCMRBuSAQd/PZAe/87i7L8/AFfJWW8qkfa7zmcoGse
	e0h1T36h8Hiw1PRBQwefP89I+DnXskcHgQDs6hWvZUflZ0F3178wRsm4IsLFDaqkftN7LQETPWZ
	eL+kMK1xXfA6cANBw9SS5Bd+qR8O/6oPNkZiCwLRGJ+qlURqzIcQobvV681teEoJdHmhygzIQOO
	UAwzW4+TKa5zqHvLba83vOYlBf4DmWa9kg/b5bSadDRMoNlZM1gDkbGOWPE6qZ2ZxT2Tgtf4LyH
	hGDA45yFKlW6LdLCQJvsTZeT4Fwi5UUdNuTjAY1wMELHDVgxbjInSx5PIa
X-Google-Smtp-Source: AGHT+IF4Co8aoQPdp/p5ff/3fLI8tNtSvixQwidRJsMSeJbryeMgmiZxjL+AqiLpgmcJiIOYnaXZoQ==
X-Received: by 2002:a05:6402:34d1:b0:636:2699:3812 with SMTP id 4fb4d7f45d1cf-650977df5e8mr17217698a12.0.1768204592725;
        Sun, 11 Jan 2026 23:56:32 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b9d4c0asm17138294a12.9.2026.01.11.23.56.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 23:56:32 -0800 (PST)
Mime-Version: 1.0
Date: Mon, 12 Jan 2026 08:56:31 +0100
Message-Id: <DFMG7RK9BACS.1LM96XH56V2VL@fairphone.com>
Cc: "Herbert Xu" <herbert@gondor.apana.org.au>, "David S. Miller"
 <davem@davemloft.net>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>, "Alim Akhtar"
 <alim.akhtar@samsung.com>, "Avri Altman" <avri.altman@wdc.com>, "Bart Van
 Assche" <bvanassche@acm.org>, "Vinod Koul" <vkoul@kernel.org>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-crypto@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-scsi@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: Re: [PATCH 5/6] arm64: dts: qcom: milos: Add UFS nodes
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>, "Luca Weiss"
 <luca.weiss@fairphone.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
 <yq1a4yj5ysp.fsf@ca-mkp.ca.oracle.com>
In-Reply-To: <yq1a4yj5ysp.fsf@ca-mkp.ca.oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_235635_827156_00BE0D9D 
X-CRM114-Status: UNSURE (   8.86  )
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

Hi Martin,

On Mon Jan 12, 2026 at 3:52 AM CET, Martin K. Petersen wrote:
>
> Hi Luca!
>
>> Add the nodes for the UFS PHY and UFS host controller, along with the
>> ICE used for UFS.
>
> arch/arm64/boot/dts/qcom/milos.dtsi isn't present in v6.19-rc1 so I am
> unable to apply this.

This patch is based on linux-next where milos.dtsi exists, but any arm64
qcom dts is for Bjorn to pick up, so please ignore this patch.

Regards
Luca

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
