Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25318606A31C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 09:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mdMZ7o/I;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Pp3+xQ1J;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=NKdPBKD4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hVXOLxmTDh0ihZMPZwoeUxR1Gdps8HAt9CapBL7uYB0=; b=mdMZ7o/I1lN8oNJ7E6rNnkPC7b
	xo1A3JpWlsyvC7QmR3vQARp4apRLk0EnAduVwQhy9/yXJWEAd3eslrhz5d36/qQ0qB7V/an43FhCe
	AXHp5I/9ilAolhVxkkTNLBCPMCusbfjWiHd2Q685xL/+Q1OHPhpOdS8x7lRbRRibroo4FQ8idSaiJ
	UQDKrJPhDNSTWRyRcF0HZu7eMXcujs1J5myIhipeJ0Djn3Dk6D3U854tCeZ7uqV/o6BmSdJ0gox7J
	t5m5T2xOaViSue1SNvXM0EijpV6zg0vuXcLfYdBPCpEPpnj2wXSVaKponqfwvI+08SyLsJJDmMKIb
	oiPXYsYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xStBz-00000001oOw-3hZb;
	Mon, 16 Nov 2026 09:40:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xStBx-00000001oNk-0Mze
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 09:40:02 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AG7etsD633385
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 09:39:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3NS380Ta+SsnqX0SjlIM7PyqYuO0HINtcV8uX5UeGVE=; b=Pp3+xQ1JDN2qpTOU
	apUC6yvkxPlSK5KFEa+zl/QGNENbtMcroH2IUsU1OMCnOP2IuIdQcfVJPdornGhL
	rFhD+n/bSuOVdIyn0TD9/cvY04xIzmA8aRD7R9QI6bUKNKNtybvPXKfavEUtRiOS
	nZPF/j0+qBEan+xWGTWBNFTE+V4rbA9wM+tsyR9Rk1H6tFK2fIKDuHBM6Ks/cRFC
	5Y2Igtex1JXTGEAYYA7cXXUdBfi3QUk1S7/1xpydZxqtHZeDpvRfwxDqdtJD7iWm
	WpJeU3kRE8fzFd7Nz9jezzjGuAglSe59BP7/aqO/H55dKBbqYfHF/tUgnuVljp4c
	PaYYsA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhnx5x55-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 09:39:59 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ed02a00b24so28519665ad.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 01:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794821998; x=1795426798; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3NS380Ta+SsnqX0SjlIM7PyqYuO0HINtcV8uX5UeGVE=;
        b=NKdPBKD4/wEuqIzcOlBfeTexzmaWrjuAhNSMDWdLh0q0bsUoPgRrtcU4xkajgeLDlv
         VeWgvG4GOWptTkImzFl0pPJbCDQDAJi13MJotO1IqUJAW6I4xaB+UhZjpe/EMql9S0vV
         jcO/TAYzPIdhA+2y+0AZ9/bYYI+eQwn6CPO+L7Luxo+zscEPnwgP009kJG7xBP8I89tx
         Uncj8hS/PUxmn10IUAYEkJBXfv34idATVlpl2qbBUapIJyQC7pQohl/qTt237HUbmwb4
         qRzdpfLStwiEJmr9lPBOYIYuK0yrqGi5dUTd05izPVkv1+p/0SeusBQovgRI9rJL3QYf
         27vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794821998; x=1795426798;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3NS380Ta+SsnqX0SjlIM7PyqYuO0HINtcV8uX5UeGVE=;
        b=j92EuoTQYlkYI29EuaRe3WNU5S8J7HCcpbiymcCGbvVYeDykXcgR5/WSoL6uJlGRD3
         7y7zZlhQUi93XqRDRSNn63sPNzkllR7/AV/aTu28UCdVP8vM2V+giuRJqCNdeDsqAYyH
         XM+DWd6NkXTPlPLvHYYcU7m6edCHqt3Lves3Ut1W4TWSdOsHIBaKBqX6SeSeX+QeJyvN
         TY43vlRjT1qJigE1Eyil7TEh6Io3Na3trSKR5+qtybCkNc7PsB5BGTsFtL1lMfbfgswO
         NqNtIMKQSU2W98MnIerdmK3C2Z70pMdBeur+dGO3LxZc/2eJkgpc3bx1pVzmlwtqmOyT
         mTWA==
X-Forwarded-Encrypted: i=1; AL+hErFPZDcrTKU8az3v5Wtu6gknA43l1DLc6MXVmXnlUuwu6xuwxURWsWTjSknItV7WdZbSMWqyNPiieXc=@lists.infradead.org
X-Gm-Message-State: APuU4Z/HwEGNgVUxyeBra7a2DlxMi3nFQ7Y8P4x1ZFCbXkRloJJwkA1n
	fhvToi1lET2nw/H7GUW3oBFukeFGumUnwtmE8rxilnoKwfw8bEJFw29uUoSrLkmKK6TB1n/6hnO
	htvc5B5bsvT8OcJjHeXXoKGWnL47nMsrKrrsRGFI42vkrjGkX58WACWYF/gcbvdV4UHzg
X-Gm-Gg: AZFdTZevDeIzBEoZyUUOFtiviQNdwneBRUXpCh8RkbI4gc4QdUYjeFixe8Ddp4jBwMA
	hN/EYl8Gacu3PY5MU7nAZJb/pvK1cDTe+75wSpPHX9YhQm1ZQFdzVPpruvTNTg8v1ORtX8DAeOV
	Kxmvj21wt2Dcr3G9ETnjv5vxN2iPwK2NzhCWumSZosdihvqWEm78Rkbt5w2FpsMpgGFFvcbhh+K
	PbW9vd/UWk26nFCIfU31NvEpQ1XZKfnUXzuTW7Hi0uen2TgaoB8mUuAeN8yJaY/+K6Xq8pqegOi
	ZH5l4H3F/jo5JS9fn/uf0dTZt1ejyvNu5sIvBLmddMAIfoRsv34ZymoIaMPUuDJ6bsJhmrYBVq6
	BiVbcYJ9LdjibYEj0lDFikHWyhBEzQLuWIaC1CF5c2aJ6RAT8dcjCR8vE4winT0+WJJvjP+bHVE
	1gXIBA9brdyTo0obNlKLCD+nrWs3mBUjRJTAQvSOH9e6GGsYWOiteD+sy4U5geJDpQi1NAGKfwg
	acZ
X-Received: by 2002:a17:903:2a85:b0:2ed:eb27:6c5c with SMTP id d9443c01a7336-2ee0dca8c24mr98437735ad.50.1794821998085;
        Mon, 16 Nov 2026 01:39:58 -0800 (PST)
X-Received: by 2002:a17:903:2a85:b0:2ed:eb27:6c5c with SMTP id d9443c01a7336-2ee0dca8c24mr98437575ad.50.1794821997614;
        Mon, 16 Nov 2026 01:39:57 -0800 (PST)
Received: from [10.149.108.218] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ee0f75de7esm35587675ad.21.2026.11.16.01.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2026 01:39:57 -0800 (PST)
Message-ID: <2c7a2571-6683-4f29-8d5b-c3e8e87d520a@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 15:09:53 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] phy: qcom: edp: Update v8 programming sequence
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com>
Content-Language: en-US
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
In-Reply-To: <20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE2MDAzOCBTYWx0ZWRfX/ed1rG0TYgZ0
 O3zDYVty3lNRgHup+Un1svrJX9xOcrm6BHI4hoYecReSUGseu5kKs/iKupEdlipsj5WebENW9aw
 PBif2ySB2Oq697Xu2m2QWvgqdU6TkhDAPt0BR4J4nC5/i60v1qP4dpHv9WyZWd3a1/asAqpp2mB
 1m6lqvPWVwqLg30H6aqm1+qLl/zhlXPAgOC/LfSO3MRhlzXIpRXZAoW5kWauAQ6YnL/E5TsBI6q
 kQ9+37N44m0beHO0nPMMuKzTZBJSVXjGrIAf9aOdd9FhSJYmHvf/NpUg0+om4g3A8r6LlLfPXP2
 APVPqGYiMSfATCVbmYltuZX9RQwwBUcIjAHwD9Jyd+fwzE/uoaJE+Qf3AwHaaOJbQOQzZ9gCwGg
 ovd0JoSKtogfwaEmC7hpZbyqn0/vw9zbywQ4dxVYXAUOaD661sAPBjMSTbWJp+1jryt25IqprKG
 15NxAJTOZE61i+WOp0Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE2MDAzOCBTYWx0ZWRfX9dj56jAL1Gbk
 alnuBqLjyRC4gvLign1L+mQONl3qzdSDjPaoPKBaV0/RRLiIDMB1dqaZB6wxQoWMotNN/eGvjA/
 TCMach4ZFyAXW2NZIG0djVJVDGLs5/Q=
X-Proofpoint-ORIG-GUID: 9fAc3yj1wW6iP-A4Zl3J6EgbBtX-Tgnl
X-Proofpoint-GUID: 9fAc3yj1wW6iP-A4Zl3J6EgbBtX-Tgnl
X-Authority-Analysis: v=2.4 cv=Jr5kP84C c=1 sm=1 tr=0 ts=6afacf6f cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=CkkWTzGYo-v6zW51zJgA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-16_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611160038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_014001_249959_A884C2CF 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 6/23/2026 4:59 AM, Bjorn Andersson wrote:
> The programming sequences introduced for v8 doesn't work other than for
> 4-lane 8.1Gbps. For 2-lane 5.4Gbps link training fails and for 2.7 and
> 1.62Gbps PLL lock isn't reached.
> 
> Update the driver to match the documentation (and Windows driver for the
> 1.62Gbps PLL settings), to get past the link training on lower
> resolution monitors.
> 
Hi Bjorn,

Gentle ping on this series. I've been testing it on the Microsoft 
Surface Laptop 8th Edition 13.8" (Mahua), and with the patch below on 
top of it, the eDP panel trains at HBR2 on 4 lanes and has been stable 
in my testing:

https://lore.kernel.org/all/20261109090449.410840-1-gopikrishna.garmidi@oss.qualcomm.com/

My patch depends on yours, and I can only send the Surface Laptop DTS 
with HBR2 enabled once both land. Without these changes it is limited to 
HBR.

Could you please follow up on the series when you get a chance? I'm 
happy to test a respin on the Surface or help with review comments, if 
that would speed it up.

Tested-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com> # 
Surface Laptop 8 (Mahua), eDP HBR2 4 lanes, together with the LN_DRV_LVL 
fix above

Thanks,
Gopikrishna


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
