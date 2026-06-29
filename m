Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54728C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 07:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8X/CwBtpamaSpS/sV2bAIm/85Z5DtYIikY0t7MjR4mA=; b=J0v8p0B0nkYpNe
	QvNDp645vd30b8ZYZIlggm2bReM/G+EUBtskXPoa2WUyiAMJq6wxxTWz/j1VRYwGnj90CBKZaWbGn
	VMTQyinfbpWpey2oha0L6/YdRfgRahJd2Kvj/JPm4z/KRwrapyUlHkfELfhBrukU2eahfLvwSj5C0
	sPOjM7nESJds5fq7akLN6bNj+JBtmecFkDZSbKZMzarsW+lqnQeB7eoG+jZ8c0bp2hIjxofWKblAL
	KBLjMPsGa+ZURZWzz5RpWcjT0SMeluV9ft1TaZ1aEzlfhyG2JSHi/bHhAEqcfVLngQMvg0wfdfbo+
	23BgoTp48H0bUTo1mejw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we6BC-0000000DrtN-0I6s;
	Mon, 29 Jun 2026 07:13:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we6B9-0000000Drrl-1YNY
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 07:13:16 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65T6rD4o2135783
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 07:13:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DpBPb27RIWIwXmB/JzvE9Nff
	dB3sd81CybJo2XPwfZA=; b=PrsjYO+bFn0aUg7xZxYo9mcccrZ2ffRVpawmmtH9
	SdYyX78TcWCxyE58uEq3zmWsxg5KbFnDcARD19BqLRuhLmkF2NSnNEwIKU1JTv9q
	A7ex8X1GKgnn0+aPysr0k+QJpnoSAsbLeJCcr76F6Nfxr7P5o3hy2+9kCV7hocy8
	mtrsnfHJ1nSd7Qa0QlBiIibdKGzlSGNxPApQerTu+v45nTjqxR492DVYmXArCrTi
	wxSGixsiquzYOerCEvC45kzNzGZoMigxS1FKmYQ7/k/0ytZhXA5mzfFjtPZVhfj7
	d+S2C6n6CRvzJDKHw9a7FdwbRKlsxcyAxvTsD2pUW+TFCA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f26tun3bf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 07:13:14 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2c7cfa17fe6so46431145ad.3
        for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 00:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782717194; x=1783321994; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DpBPb27RIWIwXmB/JzvE9NffdB3sd81CybJo2XPwfZA=;
        b=HDzMJ+6DoxpTzP1lvoa03nnmuUYQWBYfImAKtu1okvrWMo1E5X4PQ+pftFGs3xByjE
         GXMuG/R2s7EaovOlTqmllmOr7JZ8VN0jTCxY8dN34GGx7EgMHHDQenPMXyzOdOK3ACMY
         NkcQS+6HuezPFjQE6W8n1OkP/UrzDgax3xvO0aGwUnQSgbV/n0c2OTaXLf+4pFiOTXqh
         bgpqiu6Bi/MUUUSaK94SsDrkaFme80SrFYvBKoSgM/YkHGWzwF5YHZMcFbgqQ79leCzG
         5006u84N4rRJkr9W0UpGe8jTsjCaB72ZATqBdXE+LF2Z/AXQgont2TNzQbUuGiFuNoin
         j1eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782717194; x=1783321994;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DpBPb27RIWIwXmB/JzvE9NffdB3sd81CybJo2XPwfZA=;
        b=JGvMZRY45Ta0KsrRb1Q4D6yWb3fWmOZFljenLil/qi3yZFzT+hzRRnlyJpi0PPMPfy
         3ChuPwA0MkfyeuLbVul7klCxen3CbAHziAr8XwSD14vJRvHxFH4xhTWzVK3kHyzES5XM
         l9VMCUjPmALX8PZhXbnc3Dj6tweY8lRHCQLEmiIMh0MmZ9pcl9j8NFwnIugb1LAZGN9R
         DC0+WIzTh10VoK9MeMjZYOBsnO2jvsf7veTHQSmY+ObpQlaH1FXPBwdxoHDnvhUJ75Uz
         zcxtBJQWwiS/AkZyu9yTbhwW1+/WCQYOGRvLzvr+lvmVIBPykhQFR9/6DPneuu3sxI4G
         E0CQ==
X-Forwarded-Encrypted: i=1; AHgh+RqbzpXKt8Lxmvxbwpp8LFKR2f6Rv793GD3Xggvy2jFki4rYV9BIIMRP6/S4jpeahrPTwrnCQCnnavg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWg+JQQy/kLo/8ewDr28D/fyc2J2T+44Y1ZJJAuqlRNsdmYNqS
	ZUH70hub9YrUzgjnn0F0zlezH+P11eOLYDQXN1+kLBtTjqs0vC7RAqgVZLXeN9rr60dkdc9wAu3
	Pls5FNbPjwda+Pfdd/D+WOPyzwUCg4PexLAFNWhQaaB9oy8dWXNG/pcdgkuIEmlNt0vj7
X-Gm-Gg: AfdE7cn9BPv9WEurFLGfpCWFmjoPewXg8KWwG6PbtE2BjVD6RKQhpQs2qQCrR7RX9h/
	xRr2zkM0f+zn/RCur0YcqfTdr/VyBQjzYyMOcEJNqeAFO5GXYxKRPJt8/yOiwSE31w38oh0r66P
	Qwr0WCIqvJ2Iv/vneJ6wpCgGI4f8YgOjm8wApSD8zXo8UCbGziJh9cZ97kmRGbQSnU6+adUrGsU
	rvs6JwMAIIUDgEMBvSN9rgWxzx4vrOSGzGUv8M428Lg4TBe6Hxg3hHEi8RWDYEUU+I6fx40CoP5
	9mptK2odQnOBE3fnCboqKqf0G7/kKuCrm3uTfVcSR0uWKDanWOHimykoCloViFNmXFQG7MTateQ
	Gh68ZDmHbpneESnm2pl6DqLL0ENjHmwgSUx5k62Uef+UWfg==
X-Received: by 2002:a17:903:2b03:b0:2c9:b396:1a55 with SMTP id d9443c01a7336-2c9b3961fa6mr64038515ad.12.1782717193878;
        Mon, 29 Jun 2026 00:13:13 -0700 (PDT)
X-Received: by 2002:a17:903:2b03:b0:2c9:b396:1a55 with SMTP id d9443c01a7336-2c9b3961fa6mr64038315ad.12.1782717193458;
        Mon, 29 Jun 2026 00:13:13 -0700 (PDT)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c8255602fcsm54177235ad.60.2026.06.29.00.13.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 00:13:12 -0700 (PDT)
Date: Mon, 29 Jun 2026 12:43:05 +0530
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH V1 0/2] arm64: dts: qcom: Shikra SD Card support
Message-ID: <akIbARuf3lMAg6rj@hu-mchunara-hyd.qualcomm.com>
References: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
 <boo7p6mgop7rarfu3rfsrfah6eq7zp6y3sf6mdq3hsejtacwxx@yl543m4lj47d>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <boo7p6mgop7rarfu3rfsrfah6eq7zp6y3sf6mdq3hsejtacwxx@yl543m4lj47d>
X-Proofpoint-GUID: viX7Ubr7bkg3h8z8fG08vXkDMxlqXT1c
X-Authority-Analysis: v=2.4 cv=A8Rc+aWG c=1 sm=1 tr=0 ts=6a421b0a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=BkqjwfLYJ-8FfuLtd5sA:9 a=CjuIK1q_8ugA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: viX7Ubr7bkg3h8z8fG08vXkDMxlqXT1c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA2MCBTYWx0ZWRfX9T3vEz7C9X7n
 csDGS21nLKjPrFoUlIn6etj7rfm9b8GdWdgCV6joFkBr18sfIZcdWTxgOwmB+qG4yAjmD106nTD
 86OROJEWmR3XcHHNUvA+PXD1btEKavIi9lonpi5NNxubvqrLJctEVcdbmtlEFXToGVTphN3lV2/
 IPMx/Ir/ciw0LR408wVT5vRkmlp7GOpL31fZNOmn0j+ap46xO1By3my+swhSZaCQzZl3cmxcNXH
 vEjWBHHz5PJw6Uu/IMLSU8uwDHUqjM1l+nqWdzx2BXgk5iSIRkufn4zOyMzuHs77k1UMzrh3sRN
 0+mD86iINd5To/rv555VQH9+sWJVYYm5zk7Wo13neHAIo6OmyJ3aQoYCWierpqyc7Afn7TLSTuq
 uTdpFtchV7eF5dHbiPYMsSc0CIaRJLTT1jj9s9Ow1xsHVIKZxDRc+JHgl4VqH0dOlJ8T7DbWosz
 cQWV0TGVfPldtFj75fA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA2MCBTYWx0ZWRfX3rUfhGRYJKn4
 EVHDTamU2mGRU7Yxa8X5RT1DBZqgSy5oJKkBPUdRQv/XJGffzr8KzbIAI0miyZ7jw6r9ORzMYOW
 FnfPJqzU0tt4xBhhWEaZbFCchkqj5kQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_001315_420820_F09407D0 
X-CRM114-Status: GOOD (  18.60  )
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

On Tue, Jun 16, 2026 at 03:54:56AM +0300, Dmitry Baryshkov wrote:
> On Thu, Jun 04, 2026 at 05:50:43PM +0530, Monish Chunara wrote:
> > This series adds SD card support for the Shikra platform.
> > 
> > The first patch adds the SDHC2 controller node and the necessary pinctrl
> > configurations to the base Shikra SoC dtsi. The second patch enables 
> > this support on the Shikra EVK (CQS, CQM, and IQS variants) by defining
> > the regulator supplies and the card detection GPIO.
> > 
> > Testing:
> > - Validated on Shikra EVK variants.
> > 
> > This series depends on:
> > - https://lore.kernel.org/all/20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com/
> > - https://lore.kernel.org/all/20260521-shikra-rproc-v3-0-2fca0bbe1ad7@oss.qualcomm.com/
> > - https://lore.kernel.org/linux-devicetree/20260513-tsens_binding-v1-1-1780c6a6caf2@oss.qualcomm.com/
> 
> If the SD card depends on remote proc, tsens or cpufreq, then something
> is wrong. Maybe, the way the serieas are organized and sent.

There is no technical dependency on tsens for SD card. The mentioned dependency
series was to ensure the changes get picked up without conflicts.

In the next patch series, only the actual dependenices will be mentioned in the
cover letter.

Regards,
Monish 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
