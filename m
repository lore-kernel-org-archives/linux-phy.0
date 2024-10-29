Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E9F3D3A678
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 17:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HH/fDY2yIjJ9Vr3SINwTDwY92BFxFoDwyn2ezFAqcBM=; b=NW9As81hyeCsRc
	/Xu3mFdPWFV4jKg/8RLrsma8jF/bma6vFpcARfWTuQQEL5/CTYG+quh6U3DxGmBsox1asJASJNtPw
	mRQCTX6Qgt1j/Z8/iXWbKsR/RYzHsowjN5KEQw6flMT7r1Q7JIVCi8Zo0eK3La3XTfjJ/y69IZvwr
	eKdDDJAgeo3EeYCZj/BFfhLo/qfhbqL5k5qZrmYoNgxSHMTLIxaylZeOV0p5BtOLys0B5BUABFx/F
	LJbOSt7xckrhlc3KE/1XQejHss4H+r5i7izT8o+sy7xlOsCWbystxNOS4Vp4IKhnpRQjndgByF3xI
	N1iPmzjCMCbv+9yQZg9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5q8A-0000000FHiO-09wx;
	Tue, 29 Oct 2024 17:35:46 +0000
Received: from pv50p00im-ztbu10021601.me.com ([17.58.6.57])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5oGO-0000000EwnU-28F9
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 15:36:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730216162;
	bh=puxcM7+qXLjSwz68WBl3v2znnK9nvbamWejoVMBg5Ts=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	b=mwlKU0wNVYj/f0QuLQyW332g+Rm694/Ue89y0qaiSnkuy9Ya3arYo56nduii5yvN2
	 3UUnBADolY9vEMa9u33v3DHb5k2O2AQgmpgIjKmmUvAnkOxVx2T5T7iC1SKf2sPiTD
	 8mqbUbZRTut2qd4odYJQCnr8BCOfAkJdl788hzyG+lW3yqSOKNgO5Tyy0Xid7hvd+j
	 fIZIk0Fn6gNuJvNI2i+Rh2C3oaAv8JEhcaCAkAtMfYADzpBg5EuOUAKr5mujpR20XQ
	 ww1pk+oV05mvBd2t0Q10wQkkQHburN8zp1ribRexuH1+ulrPIkJEKeGYNGlXO49pNV
	 v7gnhFuu8rVCA==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztbu10021601.me.com (Postfix) with ESMTPSA id 148CD8013C;
	Tue, 29 Oct 2024 15:35:52 +0000 (UTC)
Message-ID: <a6d7efe2-ec92-4ffa-a1f1-bc73ebd49d16@icloud.com>
Date: Tue, 29 Oct 2024 23:35:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] phy: core: Fix that API
 devm_of_phy_provider_unregister() fails to unregister the phy provider
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Lee Jones <lee@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, stable@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Zijun Hu <quic_zijuhu@quicinc.com>
References: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
 <20241024-phy_core_fix-v2-2-fc0c63dbfcf3@quicinc.com>
 <ZyDmdsHtxo-gFIFH@hovoldconsulting.com>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <ZyDmdsHtxo-gFIFH@hovoldconsulting.com>
X-Proofpoint-GUID: XeQvugf_b68p5An_VnUiKVZ6QSUfRYln
X-Proofpoint-ORIG-GUID: XeQvugf_b68p5An_VnUiKVZ6QSUfRYln
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-29_10,2024-10-29_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 suspectscore=0
 mlxlogscore=961 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410290119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_083608_598597_B685050F 
X-CRM114-Status: GOOD (  14.40  )
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

On 2024/10/29 21:43, Johan Hovold wrote:
> On Thu, Oct 24, 2024 at 10:39:27PM +0800, Zijun Hu wrote:
>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>
>> For devm_of_phy_provider_unregister(), its comment says it needs to invoke
>> of_phy_provider_unregister() to unregister the phy provider, but it does
>> not invoke the function actually since devres_destroy() will not call
>> devm_phy_provider_release() at all which will call the function, and the
>> missing of_phy_provider_unregister() call will case:
> 
> Please split this up in two sentences as well.
> 

good suggestions. will do it.

>> - The phy provider fails to be unregistered.
>> - Leak both memory and the OF node refcount.
> 
> Perhaps a comment about there not being any in-tree users of this API is
> in place here?
> 

okay, will do it as you suggest.

> And you could consider dropping the function altogether as well.
>

Remove the API devm_of_phy_provider_unregister()?

i prefer fixing it instead of removing it based on below considerations.

1) it is simper. just about one line change.
2) the API may be used in future. the similar API of [PATCH 1/6] have 2
usages.

>> Fixed by using devres_release() instead of devres_destroy() within the API.
>>
>> Fixes: ff764963479a ("drivers: phy: add generic PHY framework")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> Looks good otherwise.
> 
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
