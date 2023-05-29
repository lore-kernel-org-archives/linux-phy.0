Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2536AC77B7A
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8smYnL5ZO0CQayWRBenoAFcq2JlMMz+w/6eMtsepChQ=; b=mKqn9/9w0Uc849
	Y2Yl3hH9RuTxmzZGWpU2uKcRvQo0QuuNk8MKBpEV0bvS6LKT48D4vHvAinCpKsK6xMRRlbKHMzIyp
	PaAIwV9o82Ruj/Qf9m3djyNIdHvAn67rIsz4zd36f+1WfT18xGG+08VeU5l2p5WXB2+xnQPKJBci4
	+DU9+s8ajD2SBdPmqwhHXmHIJMXKtH6kGfxewqaHnqDir4+Zt2uIt7Y4lePFU7VpYb/ccXOP3/I3d
	S0d6aOFvUv5izpXndYxQ2V7tTl5RhqAtieaVh0vRZwPJRG4bvoRVUXo8jiYUMGIqB5qC9/A5vMVF6
	s8blN96TXIQAklWUG2fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3lhA-00BrSY-20;
	Mon, 29 May 2023 22:50:32 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3lh7-00BrRs-2K;
	Mon, 29 May 2023 22:50:30 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-6260de7cfaeso15581466d6.2;
        Mon, 29 May 2023 15:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685400627; x=1687992627;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RVBRt1RRCrWOt+dpsuJxOTx1nUGJsRbKUrCzrpzPHpg=;
        b=SnClQBMxTp7WB5BKdPH6jLBMnPf5Rr57XQye4Tg/qNfGeWa1n6+0eqOQcuMaP2RptJ
         7TKbm0BI28LC/0aa5r1aTz7ACKqd03WMuYRX6Gdh3fOUwo58EzWofQlfs1C/Nsymc6YB
         c6FljdFLU6htyUlDU3cDgXZaLY05vZ2PZLXLCXkkWZpYX51iOFbdmkV93z4kUlZTd7sv
         okUF6FFd5LQd75En8avR1si/y/Ot4/tgWQHudIRv2wpc7DH8fsrRQFyEqD60JD6Yila4
         ccE8kSERvSJJMZ2sN3sE9j47sTHDrPii5Lf2dGarVCJ3pEedbfuznbV+u2p6ed46QE8e
         /q2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685400627; x=1687992627;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RVBRt1RRCrWOt+dpsuJxOTx1nUGJsRbKUrCzrpzPHpg=;
        b=fZOBBNQNyRNWGuywHLQCVw0LpCh8MRR2aWBHTtGGDbTHfu16JvE6SiYrf67r73EVAD
         6oPaxP/ZJa0rr+gabAlXuyAlm0iStw7LvWyqQKa13gkEPfjA7uX4TZfAd2X788Ox1njU
         J4TuGSXKdoXD132WU6ynxdkU/aHNh0f9uYopaAujKznCQbTAAjmbNAoQ3RHk3R7d/cHG
         ATxzebZEt5vq+FxwTnkMbIpulXFoPx/+B3g8pXAr3owphBcNBvh6IWjQGGo9eyV3jG3F
         JmgHUnLLGsa2wwb5a+bGC55t+ylH0m7Y5yngDgIw5RnacXvtP/lsh93zbNpEWnn5OE6e
         hXwA==
X-Gm-Message-State: AC+VfDzF7OjM6wpvu3pKW6YK+yGtKNF89nF5OAOd/NW14jZ8WqlQVAay
	DdeEbm5RbKnYKglfuOreGqQ=
X-Google-Smtp-Source: ACHHUZ5RCCEHDMQYUZGVjcK+yOtF4rKDjrLpwjulFacPlB4NJo4QrqTLdOvIxYIYnMkqqrmoK4HEKg==
X-Received: by 2002:a05:6214:c24:b0:625:aa1a:937f with SMTP id a4-20020a0562140c2400b00625aa1a937fmr186250qvd.59.1685400626774;
        Mon, 29 May 2023 15:50:26 -0700 (PDT)
Received: from localhost ([2600:4040:2007:9800:1794:1f51:786e:6197])
        by smtp.gmail.com with ESMTPSA id p8-20020a0cfd88000000b0062439f05b87sm4121831qvr.45.2023.05.29.15.50.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 May 2023 15:50:26 -0700 (PDT)
Mime-Version: 1.0
Date: Mon, 29 May 2023 18:50:25 -0400
Message-Id: <CSZ4NQFL3URD.I9QE8Q3018KI@Latitude-E6420>
Cc: "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Andy Gross"
 <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Arnd Bergmann" <arnd@arndb.de>, "Olof Johansson"
 <olof@lixom.net>, <soc@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy
 Express
From: "Rudraksha Gupta" <guptarud@gmail.com>
To: "Conor Dooley" <conor@kernel.org>
X-Mailer: aerc 0.8.2
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-2-guptarud@gmail.com>
 <20230528-decode-creasing-f5b3996163e5@spud>
 <ad7a6ee3-cabb-6f92-a595-8791801cfe97@gmail.com>
 <a8d3d68d-d202-ddba-3289-65b347807538@linaro.org>
 <CSZ46N3I9GM7.NON5KMJ66OK5@Latitude-E6420>
 <20230529-bonsai-during-37a47a528ff3@spud>
In-Reply-To: <20230529-bonsai-during-37a47a528ff3@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_155029_784339_8B856708 
X-CRM114-Status: GOOD (  18.90  )
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

On Mon May 29, 2023 at 6:37 PM EDT, Conor Dooley wrote:
> On Mon, May 29, 2023 at 06:28:05PM -0400, Rudraksha Gupta wrote:
>
> > Gotcha, I will do that next time. Should I still send v2 in a separate
> > thread?
>
> That'd then be either [PATCH v3], or [RESEND PATCH v2]. Ideally v3 since
> you will have added the tags you received on v2.
> AFAIK Bjorn uses b4, which should be able to deal with the series as-is,
> but sending a v3 with the Acks etc would not be a bad idea. You
> should probably give it a couple days before doing that to see if it
> gets picked up before doing that.
>
> > Not sure if I should as I don't want to spam anyone.
>
> Sending new revisions of patches as a new thread is not spamming, we
> signed up to be maintainers, or get to email from the lists, after all.
> Sending several revisions of the same patches in a day would be spamming
> though, but that is not what we are talking about here ;)
>
> Cheers,
> Conor.

Ah, I see. Thank you for being patient with me. I'm really excited to see my
patch go in! :)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
