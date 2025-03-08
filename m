Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F13FC282EC
	for <linux-phy@archiver.kernel.org>; Sat,  8 Mar 2025 15:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSCplD/p6S5O+wa1Ia+7igM6fiSdWN8j0wRdd2L1EUU=; b=veZHmvGGxdJWvr
	bi6xB1M8Kv796l5dlIMfRrHA6a2RXJ9Vv/09/q0O81fyle8O3vlP9k9yYff2df9HlukbA9nCOFVYE
	5qtpclhZCdnQZlDiOo0KthA0TbLo0M+n4+g8WFigzca8s3ypTGs2yFGTV6jYxSpS39gkjwWW7Cnsv
	OQ64L4a3WUcXCbW9kXQYBtsTWfFT2gtVCX745e3/B1DIkWknXUJpdoS+b+6CEpHqZJP8vYEGQp11I
	W1gsgmgNtKZJy7EvjNcxw87lbf44YBmo2vDIO6JMG9eCKcU82yg23AeBwoz4awYic2d2F5qPBdd9u
	tNXSPFqvbMvf5WC2rEsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqw7J-0000000GnJJ-1Itb;
	Sat, 08 Mar 2025 15:29:33 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqw6w-0000000GnEt-3n6f
	for linux-phy@lists.infradead.org;
	Sat, 08 Mar 2025 15:29:12 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-30bf8632052so15352001fa.0
        for <linux-phy@lists.infradead.org>; Sat, 08 Mar 2025 07:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741447749; x=1742052549; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j1erwRbEpf42IpSPu2HfeF24p9T9l4keifT6FQUxIMM=;
        b=X34XhNQBBQ7WBzkBJj7LFV37KdhvtyujAKGRQd/DgcCVfCSVY+KwBDMFcdfJZQhZTd
         +auf4t/Wx31BPhuTt8A8G/6NkInRuVxyPaHgsHUD7IGhL/Z4ra7RAQA+8zSxF3ALAHII
         pXH2mqYYbY6NWKZzQ8z1BQ9BDSQKOaxz7gGAMKCIagTLFf1bnCYpUDr5UNBsjT297kzc
         KvJH+JVw6Ndosb33FbmlSu3Bgm5Pp86eIj4kdij7v355c9m954g5DfoEb8uuI1CKJckF
         8Du8jDoHZDDJG0Bgx4/2gM4qnCAyDFK4V0Sq+OblO4sSKlNX+YikgaShOpjChe4fUYyN
         9uEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741447749; x=1742052549;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j1erwRbEpf42IpSPu2HfeF24p9T9l4keifT6FQUxIMM=;
        b=L1cjHW2rRIR45H0t6pcXqJM8Y7SZxX2velFEB5Q2j7Po6kT7POK+FN/aGFZi22szBU
         HlmANU4v4Sp9s4LB7AG+1ud0k8KFYZF2PUh7bmhm1VMLwILf70b4j4/aCfhC32+J4FAB
         oKe8AsGq6n5QDsX3Z6+By8aIox9JlzDORIjMjU9nKCDA5zTGhptasBazSXHppn+4X0oe
         ZY0xdO06VaIqhdjhK2SN26fNKLf1BiwAelCJTGsnl1MqfBMwJXK5qQYBDB1/QK3TPN20
         b0X0JQvcEVC3xNWO46Swaf4g6wFn78ENlJoQBs6Pi6sj4xiaLiduuKlQLF4HyU4zHgEx
         B7Jg==
X-Forwarded-Encrypted: i=1; AJvYcCXJr6mt2BFsW+sGxODFshlrTaewctnkmuZb6C6nZBt62/9Ct7h/NheLin5xkHnfOvxbQkP86vHdNmo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzBApltiq1YOV7oC5aBs7+rqJ1CBPFbIy4SiWtgEMihBpW6Ac93
	NpFf/MHQxnztAnslhZ42X9q+aUk4tzh2LgJqebPMu339uxfPHml8kB+p2iTHCeSgpcVlvjvdARQ
	3f8g=
X-Gm-Gg: ASbGncvq2Mwn/UNOSPp3uciM0lxIHNEqDn4/J0Ly1ckx3qc8FIaXKAKpb9qYfXveus3
	qLofSBXSXXKS45NsoD1Jimytn5bkCHWG0ldvEHLwqpyYEAiic7VlElGWzHUszK88KIXEyr/iGba
	QV8vTkzk33h5+AUZ6Ws1OmkWBEv8Mf0L+gxHDT8kPZiBz50/kVpZKNDUKyOaufrEARft2o+jWS1
	z8jvh1zKJRSlvKbiJK7gexnQNW3G1iST4oP5y4aTHa7DwjpDk1tO4h9Nfgtbz9dBlqIYXhBgzqq
	BQwjLD9p8MkfNN2gM+SMsA+wJSH0pImUEbuALz+rhue4/uF9cuNrwHncuSlpnubd9cBS74LXjal
	MmQaaYtXP2E63cdzF7olPEVBY
X-Google-Smtp-Source: AGHT+IHWJzyRENoKYCsCD6ryWleW1FfCxkcxA9oKFolKIPqPM2Gc1cW/mG3/aDezKXNBCG2jOe6Msg==
X-Received: by 2002:a05:651c:2106:b0:30b:b204:6b80 with SMTP id 38308e7fff4ca-30bf44eda0cmr24484481fa.8.1741447749006;
        Sat, 08 Mar 2025 07:29:09 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30bfcc80809sm3965871fa.86.2025.03.08.07.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Mar 2025 07:29:07 -0800 (PST)
Date: Sat, 8 Mar 2025 17:29:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: George Moussalem <george.moussalem@outlook.com>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, andersson@kernel.org, bhelgaas@google.com, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, kishon@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	kw@linux.com, lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, robh@kernel.org, robimarko@gmail.com, 
	vkoul@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v3 2/6] phy: qualcomm: qcom-uniphy-pcie 28LP add support
 for IPQ5018
Message-ID: <fwpdzm4gdulyhfnmcvoqsbnu3fwbqyc6gne3ayz7sr6eu2yyqy@hhii6x4pk7a7>
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883A6C7E8FA6810089453149DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
 <oeu6wkfhx2masvendoweoufzit6dcwwer5bakzvg75dz3uc4bj@bwuj4slnb24e>
 <e2d84147-c061-4f12-a44b-f60919625f77@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2d84147-c061-4f12-a44b-f60919625f77@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_072910_945834_46046A52 
X-CRM114-Status: GOOD (  14.50  )
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

On Sat, Mar 08, 2025 at 03:25:05PM +0100, Konrad Dybcio wrote:
> On 5.03.2025 9:39 PM, Dmitry Baryshkov wrote:
> > On Wed, Mar 05, 2025 at 05:41:27PM +0400, George Moussalem wrote:
> >> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> >>
> >> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> > 
> > Something is wrong here. There can't be two authors for the patch.
> 
> It may be that Nitheesh was the original author, whose patch was then
> picked up by Sricharan for sending (no additional notices of
> co-development), but George later did the same, forgetting to remove
> Sricharan from the chain.

That would go to the SoB trailers. The issue is slightly different. I
can't even come up with a normal way to end up with the patch having
two From: headers:

The only way how one can get the From: header is by doing git
format-patch. But then git am would get rid of it by filling the commit
metadata.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
