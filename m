Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE4A1F47CBA
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 19:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9TskR4a1yuk7xdB8y2jNwRLB47IgSrwTDIifa8h/OI=; b=bVqKoBjULDeM23
	ApgJb0nbWWox2tTXE76RsOel7oeUeEKIY+GwJwoXpvRQF2xz/upYErqPAhtgtsC7PfFfmBTWYpTW7
	ihrwQ/C1B7VOOnMn6gcSLTaqmMHpciygXxf2UqJ6zYv1kURZIR2tur05+J98ohXoHr77WFq/v6KEy
	LP7rd7TRCugbQSyoR5CwN2gqIMIMZCA6nULfiAVOnXghqdpDh33jpSY+UTZp8k/K4wKKBTaqStFEb
	BHLJGPG5bQxu/4g5n6NxG4iL3Ta/ETWf76wBn2a2vm7mMzCclJIPbUMxyeWs2u+vp4jtlVbLYUohD
	23lyH7ezkmLZO3m67spQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyElb-00000002U6o-2ZLd;
	Thu, 05 Mar 2026 19:53:51 +0000
Received: from omta40.uswest2.a.cloudfilter.net ([35.89.44.39])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyElY-00000002U5t-2Vda
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 19:53:49 +0000
Received: from eig-obgw-6003b.ext.cloudfilter.net ([10.0.30.175])
	by cmsmtp with ESMTPS
	id yDOpvM07waPqLyElLv2P4v; Thu, 05 Mar 2026 19:53:35 +0000
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with ESMTPS
	id yElEvlDy7hoT4yElFvA9jo; Thu, 05 Mar 2026 19:53:29 +0000
X-Authority-Analysis: v=2.4 cv=XZyJzJ55 c=1 sm=1 tr=0 ts=69a9df3e
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=k5Y5iPg+dmTXVWgYE/XtfQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=7T7KSl7uo7wA:10 a=pGLkceISAAAA:8
 a=cHXIWmrghMx9ieuqI_QA:9 a=QEXdDO2ut3YA:10 a=2aFnImwKRvkU0tJ3nQRT:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=F2xE/DQ+Q5r7oMcXl0ntg1chhQRqOV9k4gwBnHRdV80=; b=VRZpQFp+atIYsQW5dHJl2ybcVq
	qAE6jUAUdVaOWYFaYTwH0wT428oYj/lfXrlDMX8UduRhlYO/kE8Q7USuhA2lONB/WN2oYOI4MrB1p
	xXNh50MQhPOqS6pRdGCkKtmkiJflyrqvqIe6yNlumxvXKgEgX/8fYcRp6S42rOk8Kq0NszgDWphnQ
	0qm/AFkA9S4J5W+u2oVtkp+v45pGtUVqq+0aNuj6JrFN2SXCaqaN8JVsFMEM1JEXYN/OmF3wqwcJH
	cRJq+V51GbDjZQ/9ZLI4eYl56vKPoHxPW0Dqpw+33JMdRjJ+2MmvJrUWi9+a5jlZg16EsCW+9JQD7
	sZuMA8TA==;
Received: from [177.238.16.13] (port=51890 helo=[192.168.0.21])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.99.1)
	(envelope-from <gustavo@embeddedor.com>)
	id 1vyElE-00000000oh1-1DvD;
	Thu, 05 Mar 2026 13:53:28 -0600
Message-ID: <5bcef6ea-e83b-47c3-b75a-cfd13e4073c7@embeddedor.com>
Date: Thu, 5 Mar 2026 13:52:49 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: usb-hs-28nm: use flex array
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Rosen Penev <rosenp@gmail.com>, linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Kees Cook <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 "open list:ARM/QUALCOMM MAILING LIST" <linux-arm-msm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 open "list:KERNEL" HARDENING "(not" covered by other
 "areas):Keyword:b__counted_by(_le|_be)?b" <linux-hardening@vger.kernel.org>
References: <20260304230636.27808-1-rosenp@gmail.com>
 <8d7a25e8-3af6-4adf-bcec-394895519bea@oss.qualcomm.com>
Content-Language: en-US
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
In-Reply-To: <8d7a25e8-3af6-4adf-bcec-394895519bea@oss.qualcomm.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 177.238.16.13
X-Source-L: No
X-Exim-ID: 1vyElE-00000000oh1-1DvD
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.0.21]) [177.238.16.13]:51890
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 36
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfEYlCh+rXAbPt8DZQb/Uy8ueARrHuFfdGRfTEMUD9uyetMULaf3HsJR2YrwHNOJFlHmSb+Q1WaxpKtfbkqgnPXFbbQLyXZt0HgApFFvqKazXqC2h55Pf
 Lfyav8uEKwsDtBH7RQbinVuhKv10sR/nwSqyQNbXEhDq0H3amXUy3xuxSzbAhG0X26D0U6XymCcrwfP9oSEzEBNOoBAR+fox8x3zccrnJ8pXfqvmU7/7K+CK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_115348_687918_EBED67A8 
X-CRM114-Status: UNSURE (   6.42  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi!

On 3/5/26 19:06, Konrad Dybcio wrote:
> On 3/5/26 12:06 AM, Rosen Penev wrote:
>> Allows simplifying allocation to a single kzalloc call.
>>
>> Also allows using __counted_by for extra runtime analysis.
>>
>> Signed-off-by: Rosen Penev <rosenp@gmail.com>
>> ---
> 
> I don't see how this is an improvement - __counted_by() is useful for
> cases where we don't know how many entries there are, but in this
> case it's fully deterministic (as priv->num_clks is a compile-time
> constant)

Will this always be the case in the future (entries being a compile-time
constant)?

Thanks
-Gustavo

> 
> Konrad
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
