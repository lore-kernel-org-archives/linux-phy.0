Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71FA2D3A661
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 16:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HoEbJTCvnbGojzaFQ70anjX8hvrIuOZzc0JT9AB4mgs=; b=YYLKG2rOK+g8FL
	i4S5Rr36ggB9C3g4skRKThlQ4UsCYNdp3rcZWXQ8UyfMVUnfunYPimB2PygJccAtYXToF52yQN4lZ
	ew3ree2EQsZtVZ7AjTULi9vbiy/edhlJvWld3cTk20Hc9OZYE48fMgKKe+ZPYkfNKx9po5EmRXNEK
	5sNqHWxAXkQ+HezqFjeReznVkrGv26EDagnBXiBwT5HpHODd9n12Qw80O/af95brladRmufIdTEgb
	mgxJRZGN9Mojl4TYUt0BT99RvDBDQonMpQzpsERG7qkn8Kj7O2UDjfKXsep51SnInygc7RfEHJHZs
	uUwsXaDTF9AfFaRUsYNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5oe4-0000000F2iv-3ovN;
	Tue, 29 Oct 2024 16:00:36 +0000
Received: from pv50p00im-tydg10011801.me.com ([17.58.6.52])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5oLz-0000000Exh9-1YAW
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 15:41:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730216514;
	bh=2T9klOPnu2KdY6zwuhVfSQ5C8cDsFs4HRhNmLFusli0=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	b=dK3dMChyBUvej/LwJmH3r2B4RTyi+AFoFPFo3mkfI4rKKuBPQC1oxW3iGN+OWbUgl
	 0mt5bh81zqnoKs0QcMGMKf7xX1bOoZwOGtJqXyhpoc8KdI5MDQ6MwpEoLqSqeCeKVK
	 cKp5+JW4/TIyGBpaGdMsWE5UV45bZ/+T1B/UBXJr+3ID9XY54H5GqqkzWlOOb6C6+o
	 O+kElmhVoWWhX7+S4HieTSw0BDj5ja5Rk54g7WUj5U4HcSJLmqhuHlHDf2D6pI66tw
	 UDDYlQcix4O+W1QXT0jXica5yLHBFj/bbQhMTRgG3bLeUrMrvTYNSJ6wApsl4dul+A
	 NUYVr73LrttLA==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-tydg10011801.me.com (Postfix) with ESMTPSA id 5A03A80010A;
	Tue, 29 Oct 2024 15:41:44 +0000 (UTC)
Message-ID: <9ddb14c5-b425-474a-9a53-d34a414c3d17@icloud.com>
Date: Tue, 29 Oct 2024 23:41:41 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] phy: core: Fix an OF node refcount leakage in
 _of_phy_get()
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
 <20241024-phy_core_fix-v2-4-fc0c63dbfcf3@quicinc.com>
 <ZyDnc7HpMTnwEs-2@hovoldconsulting.com>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <ZyDnc7HpMTnwEs-2@hovoldconsulting.com>
X-Proofpoint-GUID: 9cGynE53Sln1BWunVrvjJpHU5b_1TIuj
X-Proofpoint-ORIG-GUID: 9cGynE53Sln1BWunVrvjJpHU5b_1TIuj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-29_11,2024-10-29_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 malwarescore=0 adultscore=0
 spamscore=0 mlxscore=0 suspectscore=0 clxscore=1015 phishscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410290120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_084155_455452_09638061 
X-CRM114-Status: GOOD (  16.44  )
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

On 2024/10/29 21:47, Johan Hovold wrote:
> On Thu, Oct 24, 2024 at 10:39:29PM +0800, Zijun Hu wrote:
>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>
>> It will leak refcount of OF node @args.np for _of_phy_get() not to
>> decrease refcount increased by previous of_parse_phandle_with_args()
>> when returns due to of_device_is_compatible() error.
>>
>> Fix by adding of_node_put() before the error return.
>>
>> Fixes: b7563e2796f8 ("phy: work around 'phys' references to usb-nop-xceiv devices")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
>> ---
>>  drivers/phy/phy-core.c | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
>> index 52ca590a58b9..967878b78797 100644
>> --- a/drivers/phy/phy-core.c
>> +++ b/drivers/phy/phy-core.c
>> @@ -629,8 +629,11 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
>>  		return ERR_PTR(-ENODEV);
>>  
>>  	/* This phy type handled by the usb-phy subsystem for now */
>> -	if (of_device_is_compatible(args.np, "usb-nop-xceiv"))
>> +	if (of_device_is_compatible(args.np, "usb-nop-xceiv")) {
>> +		/* Put refcount above of_parse_phandle_with_args() got */
> 
> No need for a comment as this is already handled in the later paths.
> 

will remove it within v3

>> +		of_node_put(args.np);
> 
> For that reason you should probably initialise ret and add a new label
> out_put_node that you jump to here instead.
> 

will try  to do it within v3.

>>  		return ERR_PTR(-ENODEV);
>> +	}
>>  
>>  	mutex_lock(&phy_provider_mutex);
>>  	phy_provider = of_phy_provider_lookup(args.np);
> 
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
