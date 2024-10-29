Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87B33D3A66D
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 15:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWidjf/Q6lZWC/TxwMfMSg/ydRWTtLljIkLEDn9ee7E=; b=xDESrv9Gn3c/2i
	UhFsZFKWD1PEpUeA07VJnXJPBQWJm5rIZNt51kVjkvxWwK6/n0oi6xcNTrZOev4WMfk6MG88lyBey
	w/Z7y3FcheWD156+5ncQpzJM+i6v3ysFQ0gP5+KVfoohVn6pYPFJHHeFkWfr4tqhdLRfE/Cm0RyQo
	/vNOOC83Bedjqok5se1mAo0s82C7hGua8bbFSGbPumAhFH/yv/CzOZonlofph4anIRZdrvijaP5iB
	lA8HGiZtWkKPBY8iXEdWx0LCpH++x3/Z8ToR0yIswNSRqo3Hwi3fd+/Q9nTLHWG8LC/UxRy6elHXa
	cxjQJo6FvaRTRYE0MhPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5oXg-0000000F1Ce-15ZJ;
	Tue, 29 Oct 2024 15:54:00 +0000
Received: from pv50p00im-zteg10011501.me.com ([17.58.6.42])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5oIi-0000000Ex89-1gkB
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 15:38:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730216311;
	bh=2KSkPA7+qf6t4Dsy8rcGUwLn/SXlZohyYSOg8qTI+BU=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	b=NPBYxtEXg/gVPtDzcJ5LljBXjl1/9YatYWDs7QPW0x5pzyoVSe1FdxaavliqeptkL
	 Ci7fKquB/d7hud6MUVXMDUsEY0+9foSG8Ufd3HLwlfglsqYTfknCoFr2WGOIccCZYi
	 MQx+WMfA64rOA4aAn4DY0A7NGtXmiVHJ8vZiz9/aspLG4mHK/BH4VhegEqBnlCb9g0
	 r0vYQ1S3xo4TBqjhOFfPebragCqx6oy5u26OUVRd7qvZuat+liHxUF01z+EiUXlHIR
	 vSQn2sG/zV40pxtUeEoxKDdQM/Dg13YuuzNMypcjZN/Z0AK7T/rX1ZD0CtWh5PsoRa
	 V5WJjHm6cAn3Q==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011501.me.com (Postfix) with ESMTPSA id 1DDC94A02F4;
	Tue, 29 Oct 2024 15:38:20 +0000 (UTC)
Message-ID: <c00c8669-cb1d-4125-9c9a-34d63641c226@icloud.com>
Date: Tue, 29 Oct 2024 23:38:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] phy: core: Fix that API devm_phy_destroy() fails
 to destroy the phy
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
 <20241024-phy_core_fix-v2-3-fc0c63dbfcf3@quicinc.com>
 <ZyDm7IMUBYkiHPyp@hovoldconsulting.com>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <ZyDm7IMUBYkiHPyp@hovoldconsulting.com>
X-Proofpoint-GUID: r1XHksgHMKabJrGc9FocPDS7La9C2fEt
X-Proofpoint-ORIG-GUID: r1XHksgHMKabJrGc9FocPDS7La9C2fEt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-29_10,2024-10-29_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 suspectscore=0
 phishscore=0 bulkscore=0 malwarescore=0 mlxlogscore=868 spamscore=0
 clxscore=1015 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410290120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_083832_493206_1E9FF927 
X-CRM114-Status: GOOD (  11.99  )
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

On 2024/10/29 21:45, Johan Hovold wrote:
> On Thu, Oct 24, 2024 at 10:39:28PM +0800, Zijun Hu wrote:
>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>
>> For devm_phy_destroy(), its comment says it needs to invoke phy_destroy()
>> to destroy the phy, but it does not invoke the function actually since
>> devres_destroy() will not call devm_phy_consume() at all which will call
>> the function, and the missing phy_destroy() call will case that the phy
>> fails to be destroyed.
> 
> Here too, split in at least two sentences.
> 

okay.
>> Fixed by using devres_release() instead of devres_destroy() within the API.
> 
> And add a comment about there not being any in-tree users of the
> interface.
>

okay, will do it within v2.
> And consider dropping it.

okay, will follow the same action as [PATCH 2/6]

> 
>> Fixes: ff764963479a ("drivers: phy: add generic PHY framework")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
