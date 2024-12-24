Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 222CBE77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 14:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nM8/0rb4pUNOWm8BMWx/Mx+dkwONjNZSpusssg8AeRg=; b=X58EfopR0VBRdq
	Xsz7dGJJmltkqNKK2Wk2SNU0Zvf/jCvRLBg3apD+lJmYgGcE43kh5yruEC/N7/etnOsOohIhLgrQz
	LebKt2fCVwzoYCMdTPBI47nTnUovi7hmXCb8m6S6bp3hild/0hI7sa6BqQymWkfUJflLqf5tTWwAR
	OqcXD5dIvKTQotFCQmVDjrompMz40lBzlMo/zpN2bFgHi7qPbFG5pQzg8hwXdJXZqs4ZLPjyFsy7K
	QAHJAvm2guH81YFqCB7izSmW1tpiBCWv67xKeCXi7bN/Y4qiqyEaJZrtkIVSozYyb0Dt6/ma5dI9W
	B+bpPAQKEMZmSXLynfgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ5aO-0000000C6rV-2zOl;
	Tue, 24 Dec 2024 14:08:36 +0000
Received: from pv50p00im-ztdg10011901.me.com ([17.58.6.50])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ5Vd-0000000C6Ms-0jRN
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 14:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1735049015;
	bh=1zU/xugu6Mhb77n19HMl4rFbAMFTLQKCduA+uISnK94=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=V9St8mz9Ty2sI93WJx6gCtpikzWz1FBjx9LhlySZq7Gma17cakDbWvUjDxo0sblFz
	 qM8UEh9IUhbQcC8+Bukyak/ItWTCruGe9gYuxeiDcsKA1NNY2eNtjc2TzvR1pBhRLm
	 Ogmn3TCGw6//E7SJAKLbBt1egNfEg9mMtcoBSNyj8hngn9dM05EQ6z9UiNWvu1LXtg
	 ddwupNiMtySMm9b9N1YLKw/99wB16MZuS2MPQZ6iZ8Er58MjcSZasKeX9m2dmlqKJa
	 SShtM9rIlomGAmhIp21cektOWnjK27UFwfRDQoS4jc81i9dmREjcNt82OVBZr3ymbw
	 oip83EHcjqDUA==
Received: from [192.168.1.25] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10011901.me.com (Postfix) with ESMTPSA id 848613A008A;
	Tue, 24 Dec 2024 14:03:24 +0000 (UTC)
Message-ID: <16198d1c-3d07-4615-9559-5cb8e4aa9ed3@icloud.com>
Date: Tue, 24 Dec 2024 22:03:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/6] phy: core: Fix bugs for several APIs and simplify
 an API
To: Vinod Koul <vkoul@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Johan Hovold <johan@kernel.org>, stable@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Zijun Hu <quic_zijuhu@quicinc.com>, Johan Hovold <johan+linaro@kernel.org>,
 Simon Horman <horms@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Felipe Balbi <balbi@ti.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee@kernel.org>
References: <20241213-phy_core_fix-v6-0-40ae28f5015a@quicinc.com>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <20241213-phy_core_fix-v6-0-40ae28f5015a@quicinc.com>
X-Proofpoint-GUID: vkJnDKCcbGEWa8tEwOw5CbTMeIfixxwI
X-Proofpoint-ORIG-GUID: vkJnDKCcbGEWa8tEwOw5CbTMeIfixxwI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-24_05,2024-12-24_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxlogscore=632
 bulkscore=0 adultscore=0 suspectscore=0 malwarescore=0 mlxscore=0
 spamscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2412240122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_060341_231674_CB4EDEB8 
X-CRM114-Status: UNSURE (   8.78  )
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

On 2024/12/13 20:36, Zijun Hu wrote:
> This patch series is to fix bugs for below APIs:
> 
> devm_phy_put()
> devm_of_phy_provider_unregister()
> devm_phy_destroy()
> phy_get()
> of_phy_get()
> devm_phy_get()
> devm_of_phy_get()
> devm_of_phy_get_by_index()
> 
> And simplify below API:
> 
> of_phy_simple_xlate().
> 
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
> Changes in v6:
> - Use non-error path solution for patch 6/6.
> - Remove stable tag for both patch 2/6 and 3/6.
> - Link to v5: https://lore.kernel.org/r/20241106-phy_core_fix-v5-0-9771652eb88c@quicinc.com

Hi Vinod,

These patch series has no response for more than 1.5 months.
could you would like to have a code review ?

Sorry for this noise.

Mainline and linux-next have fixes of similar issues for your references
shown below:

For patch [1/6, 3/6]:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fdce49b5da6e0fb6d077986dec3e90ef2b094b50
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=d4929755e4d02bd3de3ae5569dab69cb9502c54f

For patch 6/6:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=dcacb364772eb463bde225176086bd7738b7102f




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
