Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9DC5C3ABD8
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 22:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aK2QdMD8hBk+fs05I6f/4sFicQGv1yl4+POec3jka0w=; b=jVKdx/VjKhXawi
	ey4OWIHApmqyYKBUYsULjYlu7yliBD/sZHkBzP7eWT5Bsv4x8fiNhu4kIPpTnC9dK+MXiyI6O8wOj
	xmj46CrLYgRHwBG1uWTU7OIsJVIEuITIzf32qKpHSn6B3eSUCFIhZqk8KkZW0kMfwvuAIEnhugHts
	JQUOUcH/o0jB7Z5O2YFaPPiIifLOhgEbtClJX/g3vhVXMi0UO1ZvAtVIpVeUlRDfnxT/pHy27UNHg
	ma1x08Ki72dLTC4JXHGbQ60CGwpDxwQTTN8JFshGgVlJxoGVJZyf6vSWHY6GG69uLd6P0uGDLSXMC
	05puyGF+WZrXdTNb97OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFKzA-0000000GXlp-1ufJ;
	Wed, 14 May 2025 22:54:00 +0000
Received: from p-west1-cluster2-host12-snip4-1.eps.apple.com ([57.103.64.162] helo=outbound.pv.icloud.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFKz8-0000000GXkf-24I9
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 22:54:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; bh=sJFhDbHe3RQeCqJjlXBiwTVMs1GtvaYq9fWQt6CNbPM=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:x-icloud-hme;
	b=ODmiFydf6raRpLE1epFjZFVOuPSJ58tK3HF/KCJHy4HTEPG5SW3kpskNfIF8u6fv4
	 dvFeXg9TOkMDBZoaXlnHlnE9AwSBFVZ/xaUpsoyFWTBzvP0i8xXl6/dEseKqDi82Rm
	 u1w3AdfUZAbpVAONYde1GqCX3ENK8mKSmS2DcdQEx2LG7uNoMb9P7Ue+osxUDUoL7s
	 jJJ7ZUTITsTsptUhR8psKv9Z/L241nAKcDScl4BDIg2h4t0Jeqm51ESgzwXCfudRkc
	 8q9+R/g0bUFYOkk/OS8Y9xm09sS1a/B2CKSwarizYJwWcZqlatxUe4wkfDaXiefOZR
	 BMB4WiDYCpmeQ==
Received: from outbound.pv.icloud.com (localhost [127.0.0.1])
	by outbound.pv.icloud.com (Postfix) with ESMTPS id 956F418009A1;
	Wed, 14 May 2025 22:53:47 +0000 (UTC)
Received: from [192.168.1.26] (pv-asmtp-me-k8s.p00.prod.me.com [17.56.9.36])
	by outbound.pv.icloud.com (Postfix) with ESMTPSA id 51A60180026F;
	Wed, 14 May 2025 22:53:44 +0000 (UTC)
Message-ID: <ed2be0f8-afb4-437a-9c72-209da9e30b8a@icloud.com>
Date: Thu, 15 May 2025 06:53:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 0/2] phy: core: Remove 2 APIs
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Zijun Hu <quic_zijuhu@quicinc.com>,
 Jonathan Corbet <corbet@lwn.net>, Alex Shi <alexs@kernel.org>,
 Yanteng Si <si.yanteng@linux.dev>, Kishon Vijay Abraham I <kishon@kernel.org>
References: <20250414-remove-apis-v1-0-6fddc9a5a16d@quicinc.com>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <20250414-remove-apis-v1-0-6fddc9a5a16d@quicinc.com>
X-Proofpoint-ORIG-GUID: GUr_ctL5GyTiGhdvRmBU_Vnug1th4iYi
X-Proofpoint-GUID: GUr_ctL5GyTiGhdvRmBU_Vnug1th4iYi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_04,2025-05-14_03,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=851
 spamscore=0 malwarescore=0 mlxscore=0 clxscore=1015 phishscore=0 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.22.0-2503310001 definitions=main-2505140212
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_155358_538229_A813EEAF 
X-CRM114-Status: UNSURE (   8.57  )
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

On 2025/4/14 19:49, Zijun Hu wrote:
> This patch series is to remove the following 2 APIs:
> 
> devm_of_phy_provider_unregister()
> devm_phy_destroy()
> 
> Both APIs have not had callers for more than 10 years.
> 
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
> Zijun Hu (2):
>       phy: core: Remove API devm_of_phy_provider_unregister()
>       phy: core: Remove API devm_phy_destroy()
> 
>  Documentation/driver-api/phy/phy.rst               | 11 ++-----
>  .../translations/zh_CN/driver-api/phy/phy.rst      | 12 ++------
>  drivers/phy/phy-core.c                             | 36 ----------------------
>  include/linux/phy/phy.h                            | 11 -------
>  4 files changed, 6 insertions(+), 64 deletions(-)

Hi Vinod,

Gentle ping you for your awareness since this patch series have pended
for more than 3 months without no response.




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
