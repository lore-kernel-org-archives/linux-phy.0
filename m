Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C54FC02182
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jan 2025 07:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YY8IIlFU9Sl2MvBkglA+NM43ahJkbvOycB4Om+Cuz/Q=; b=cQQxtX8pFScC3d
	q+fUAjMvmvLK86klCBzl62CIKROyeIp65HVSOZ+x5993BhKqSf4fkTZ4aVOPZcVpFkhP7p3c3mjzS
	lGyRdlUK4tbLmH8qOmTkMxnkZyNPZcZrfNOo40HVX24U7J9uS7pdbtcKj9C8rLyVAdX5VaM7aCsHz
	fYRWigFcc2gW3njZAw9VADSoG9OfxJ9sHlcHqqDgB55wT7sCCbkNTTas3fj9vkzGNy2F9SE1E2CO5
	G9cKPpvaIZNPHyErxaFPlkk6sb4vLm9SzHuCVqALKk16GJWDDa4T+9oJB1eAkO1WyEY4y091Gdugs
	h10Z/ish++2y2HBavDQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tarYq-0000000Bqt3-13Us;
	Thu, 23 Jan 2025 07:23:32 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tarYn-0000000Bqs0-2lJM
	for linux-phy@lists.infradead.org;
	Thu, 23 Jan 2025 07:23:30 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-e479e529ebcso778030276.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Jan 2025 23:23:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737617008; x=1738221808; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hOXcA9vaOQYRNKut7rDICRe3STKLWf1DDnQmgXfB78A=;
        b=sPOvXaDWdnTeE7pQIeYkpCsfIdvcdi9NA2AqOvJtsVMA+ksH72/Px/8YhDgVDZHIQL
         4bZvpKlWUCDb/TS0Y1MU0S5cVeCbFdQjemAy+nDsZdiGG9akdS9ncGoxXrLG6mUdVOfn
         3y4jjSG3YmOUz8zkYxxv+O6W/jCdSun2WJCBFHkMRpVOOiCcnoF1Km2Rp1082QEaNJIN
         hqST5WHPwzhTR2ksPmoDHmpPeD+bAN8ZD1sQULTP/GPPhL4aGGXP1pnzbRhujSkECXTa
         MqeVCgy6pUsxW0IVKZcEJrlHeXz3JKB4a1f2fxY0r5eeWJUKWNr1gmOLOuq3fW0CU+T3
         Zrrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737617008; x=1738221808;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hOXcA9vaOQYRNKut7rDICRe3STKLWf1DDnQmgXfB78A=;
        b=L0LWdIP3kRyWPte6URSEBFEpbOgD8SmGKUu9X8R+g+I4lqtU2RJNIdBdWErExgs/KS
         V3MyTpCazPnuNX0FEul4F9Rl9DxyZZvXvk0p8Rz0W7Cg+mHUfCUfWMHpQcQaPNRll1ev
         JRlvnCPwUuRbcSMaaJHLAKfK5Y3asaoHNX5Fn0ADX+kmW2uN8itlyuz8zQ8BBv7gN3fw
         n8HR+2hs1INgTVIU2kToeTLe3LGL9pL+wlq0D68mDNSPwkcozV0oQjBNkt5NHj+berjd
         c+0rcG6h1z+8KExSV9mySlqml92J88q2IPqeenu3IJ3ekTa8oRUi3mWTg3qp51u5555f
         9cOw==
X-Forwarded-Encrypted: i=1; AJvYcCVnSAwlIosoogByGxLvQI30zPBtn7UuqP2Y6oE7GXNOubhEh9hxS1jvV3fJt4HZoEd01sgklAKhr1s=@lists.infradead.org
X-Gm-Message-State: AOJu0YxtFgqzoTlKzjjGZy9hxISf79J812KHLZ2fhuMuZv3EQSO5JOC7
	KtEuJ+ogzGMaZcwqfrMyCxiacjuh602NHV2LYKTflIz3hnJ0XzZFfAsPLVfyeKQMhfCrz9bcJ7X
	HGOmIfDcjkIN/QsBbPpN1m+pLlMf0GDmQICjCMw==
X-Gm-Gg: ASbGncugt40gkBW8Vl1a+lO6wj6pgz4gtaAcu/5/yDJDyGvn0v3waQoZiHrkgeiDP9O
	YK0VDpOtYVLq9zBr3Si9eLdhKULfobHdRCzDDNoigshnJ69B7GoOcGaN4T6TghCIoyd5IUoznFO
	t3
X-Google-Smtp-Source: AGHT+IGIaMIn2pQwsBFaA4hpvX0jt/kyYUmEG6SfZJJHYi929Kh469Ft/+4k9WcxFqZ0bD0d+2tokXdY4wY7ycbYj2c=
X-Received: by 2002:a05:690c:46c2:b0:6ef:8c41:defc with SMTP id
 00721157ae682-6f6eb677355mr210279217b3.11.1737617008587; Wed, 22 Jan 2025
 23:23:28 -0800 (PST)
MIME-Version: 1.0
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
 <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
 <anfqf3jvh7timbvbfqfidylb4iro47cdinbb2y64fdalbiszum@2s3n7axnxixb>
 <Z2sJK9g7hiHnPwYA@vaman> <i7gptvn2fitpqypycjhsyjnp63s2w5omx4jtpubylfc3hx3m5l@jbuin5uvxuoc>
 <Z2sOl9ltv0ug4d82@vaman> <318620fc-e174-4ef3-808a-69fe1d4e1df5@oss.qualcomm.com>
 <f607aa9b-018c-4df6-9921-725693353f65@oss.qualcomm.com>
In-Reply-To: <f607aa9b-018c-4df6-9921-725693353f65@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 23 Jan 2025 09:23:17 +0200
X-Gm-Features: AWEUYZlpAmBcFSsEoI37wecQuSj3RtKjsFyMGuS8EW1UWMEQXy5olgefUpEc6Ms
Message-ID: <CAA8EJpr48k_tHKk-uVpAH7TMcp0-V97x6ztdFrbv0Go0a6kD2g@mail.gmail.com>
Subject: Re: (subset) [PATCH v3 0/3] Add support for USB controllers on QCS615
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Johan Hovold <johan+linaro@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_232329_702624_301F4C50 
X-CRM114-Status: GOOD (  21.79  )
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

On Thu, 23 Jan 2025 at 09:00, Krishna Kurapati
<krishna.kurapati@oss.qualcomm.com> wrote:
>
>
>
> On 12/25/2024 2:01 PM, Krishna Kurapati wrote:
> >
> >
> > On 12/25/2024 1:12 AM, Vinod Koul wrote:
> >> On 24-12-24, 21:33, Dmitry Baryshkov wrote:
> >>> On Wed, Dec 25, 2024 at 12:49:07AM +0530, Vinod Koul wrote:
> >>>> On 24-12-24, 17:38, Dmitry Baryshkov wrote:
> >>>>> On Tue, Dec 24, 2024 at 08:55:18PM +0530, Vinod Koul wrote:
> >>>>>>
> >>>>>> On Tue, 24 Dec 2024 14:16:18 +0530, Krishna Kurapati wrote:
> >>>>>>> This series aims at enabling USB on QCS615 which has 2 USB
> >>>>>>> controllers.
> >>>>>>> The primary controller is SuperSpeed capable and secondary one is
> >>>>>>> High Speed only capable. The High Speed Phy is a QUSB2 phy and the
> >>>>>>> SuperSpeed Phy is a QMP Uni Phy which supports non-concurrent DP.
> >>>>>>>
> >>>>>>> Link to v1:
> >>>>>>> https://lore.kernel.org/all/20241014084432.3310114-1-quic_kriskura@quicinc.com/
> >>>>>>>
> >>>>>>> [...]
> >>>>>>
> >>>>>> Applied, thanks!
> >>>>>>
> >>>>>> [2/3] phy: qcom-qusb2: Add support for QCS615
> >>>>>>        commit: 8adbf20e05025f588d68fb5b0fbbdab4e9a6f97ecommit
> >>>>>> e1b2772ea957c91694aa91b90e4c0a1d7b0fb144
> > Author: Krishna Kurapati <quic_kriskura@quicinc.com>
> > Date:   Mon Oct 14 14:14:30 2024 +0530
> >
> >      dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add support for QCS615
> >
> >
> >>>>>
> >>>>> Is there any issue with the two remaining patches?
> >>>>
> >>>> Something wrong with b4... I have applied 2 & 3
> >>>> Patch 1 should go thru USB tree
> >>>
> >>> Hmm, strange. But then, please excuse my ignorance, do we have bindings
> >>> for these two patches?
> >>
> >> I see to have missed one!
> >>
> >> This one is documented see:
> >> d146d384222e dt-bindings: phy: qcom,qusb2: Add bindings for QCS615
> >>
> >> but, the third patch is sadly not... I am dropping the third patch
> >>
> >
> > Hi Dmitry, Vinod,
> >
> >   I see the bindings for QMP PHY in linux next as follows:
> >
> > commit e1b2772ea957c91694aa91b90e4c0a1d7b0fb144
> > Author: Krishna Kurapati <quic_kriskura@quicinc.com>
> > Date:   Mon Oct 14 14:14:30 2024 +0530
> >
> >      dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add support for QCS615
> >
> > As mentioned in the cover letter, the bindings of phy have been merged
> > from v1.
>
> Hi Vinod,
>
>   Can you help in taking in the patch-3. As mentioned in previous mail,
> the bindings are merged and present in linux-next.

We are currently in the merge window, no new patches can be accepted.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
