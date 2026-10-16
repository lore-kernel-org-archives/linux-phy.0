Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B1D3CC6B38
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 10:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zflAjZf4D+hjQ2g+UFYgZZpAiq48w2MiVVZODcM2zQc=; b=HeVPz/yT/SkP++
	9Q2ZFiRHDtoHeU7u537nmsSh30SIli6TkGeEob8C077ui522dVg3YmEfoKUwAvGUhG0nmwdaUQSCs
	aO700OlXF6ZL1D2JGqrgEfPpV+kclIIPVE+A+IoIXKYfAicjVKFVliXn0fNWLLs0Sv514nKQEntz6
	uRqg1actIKtd1dceMzPwTBZDolGbNxsaOZW6ujg+ivF4ZC24ZxLH3aNTdn/CkuHi3JapEKks9wrfy
	d+b5eu4BPssgcGlxesrN01Fbx0hyqWRXCsTZDfs0GN7Av7yNWebYudO3QL3GbhC636XIFh3yHP39M
	DMY04JgPs6y6W+DtQdTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfVo-00000002in9-06Tt;
	Fri, 16 Oct 2026 10:50:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfVm-00000002imC-0dBn
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 10:50:07 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69GAAY2a1794483
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 10:50:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k7IjtS+liWyVhegtfUxpKcwt7nA/GvT2mnO8kEfaBY8=; b=KDFLm7WDjdFSWKCn
	JLQNDj/WX8//nfSPhvhauZ+5hauVRkFliSfKHys8GdykmrnH/VpPErquCJObScfh
	8bCtnsgGb6spti/bbDCq+y5PgE4ZD0DqCDjO7UHd8wR6H0CpNf78rJiFvaYs1wlV
	6qQYAg/7rVA0qLyJreQQRQDXLIvlfgIXQxhAR/ZXCii0S8I61GlNPkeWQsQjce1a
	+dQqeh67NcbuqTKPNHEFFr2jHXxk5OUysbvyrVywfn0ITtkfVRkB25tOeY3HjqES
	3piShFQ15FYNq2R2T/U1UT58Do7biODm7pGMgGTDYU2mTcHyrSoWPAxYVWOJxhZ1
	LYtaHQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hb3seubre-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 10:50:05 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91782d0a163so14411046d6.3
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 03:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792147804; x=1792752604; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=k7IjtS+liWyVhegtfUxpKcwt7nA/GvT2mnO8kEfaBY8=;
        b=gD0QzjhqSofzSJG2wGnhrykFCpuKs5t3K/5UqslSgTNvqJLYIyO7xniJxmg9uype32
         G673uqSSS3G8SycsAStMIMQj767AIlLOCCa/Kzb0kuz3XaIvTbs/eNQCyfS/oYyYoIjZ
         /HK8dZPeJBHi6FwiFx0oiOFm6Gq20hTWUAR74W4R/tR2ntpZHXTBfTwpR3M0Yh9SLh7l
         kbKy8MlIfHemVukcVKJih0ze+HhdRXmTSa3hpYsksHKQmHZrjRa2Pcc56oN22CtQPLly
         5Wk0FY+1M7Ajt9hN8F+HBFNN7yYbP5y1bF8gbc1YMeowoj4F4tTckvH+vIIEq7z9kkM3
         yr5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792147804; x=1792752604;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=k7IjtS+liWyVhegtfUxpKcwt7nA/GvT2mnO8kEfaBY8=;
        b=B2Kdc/aXAVmpofkCLylQ0+hqJZOFx+WsYBAggVlmYO02vBHye0oory1uOKVMxER28m
         cXAfeAyka0W4Ih1gvmyR1up0SJRqaMB9D/0T+/j2Tze+lMwur37kFSVqwmFfbaEsT8Rl
         KfDF3gWfp5S7qCK3C9hUI5YlBnEu2t1gDbTcyBfTm/WdXzBramo5Q2R382V8hMJbQDF4
         eP3LNOgOTtwXqQf0PGh3VxVJi8Iffltn4/+FjElS41bosQKXLKTiS1Li7fP6iyMilWWV
         nrCjEoNBLJPHV1XQiq/Fz62+Z9ukl70F0COO2yksprHqPmWmlwZuYIRalPBqbJmibuzO
         BLGQ==
X-Forwarded-Encrypted: i=1; AKwUvBwHdqUMr51zQxmdYJuBtucZ4XYA1SlENdBYc2NZrLt61k7RMtdEoQ24Z+Llih6fJ346qMzIUGn0FQk=@lists.infradead.org
X-Gm-Message-State: AFq9FYKDzTZSiCHBdo7FgeSwkgW2S84ISIlLB12ytQh8ndwpggHkJt4i
	oD4yH5wI2FwzCtEQQoS9UUyvZ5X35OOf+A8VPi9280QttigTkG3mU8kKwOEtcCnYg3jVp0Q2p14
	CmbIocMO13k9kwIgnEMWftqbIUG/pgzus9pCcTFR1sH9VPGLkD5etIXnTD0tncOesEg+bBGNd+V
	Dj
X-Gm-Gg: AYBFou01/+qvxkuX3h6ArXFNa2q5DA1XL0EBbRqgqBZ79Y/QuBOakO/p9WFpfZhEyQD
	YqGf8AXiQYeWyGc6flPJO5yWfyYFWFpgIDsLWUW/COHoJJ3KQ7o+AOxsTUhVEEt/iWVp7SzSpWM
	lEhsF3NImV8DM7BSmBFlHA6lT2lDAd0iwWD5yFx4ofcteJLRqOlWVelbWJLfSqL8UB5VRnDgAYU
	Jl5dsIFNklKXulLvwHwc2N2IQ0J07XZRfzwzlB+YJt7is9LGiNXZ9HNuJPebtgi1bdyh6mpHXYu
	/X12o3sP7cQqRg1WT1FhXNMiqKYmx3YcVu5qbleYX9ezWkoQ6vv4wKp0nQgCFrW4nVo1RqeNN5u
	1SaRozAYtYph1aP1xh6mXfA==
X-Received: by 2002:a05:620a:1a10:b0:93c:c96c:a5b4 with SMTP id af79cd13be357-93ebd23a4f6mr4072003385a.4.1792147804521;
        Fri, 16 Oct 2026 03:50:04 -0700 (PDT)
X-Received: by 2002:a05:620a:1a10:b0:93c:c96c:a5b4 with SMTP id af79cd13be357-93ebd23a4f6mr4072000485a.4.1792147803965;
        Fri, 16 Oct 2026 03:50:03 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b38a1d8b4csm750199a12.26.2026.10.16.03.50.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 03:50:02 -0700 (PDT)
Message-ID: <67366b4e-21d8-4094-abff-b0539bae47c3@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 12:50:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] phy: qcom-qusb2: describe autoresume bit
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manu Gautam <mgautam@codeaurora.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260920-fix-qusb2-v3-0-c273e75c9fb7@oss.qualcomm.com>
 <20260920-fix-qusb2-v3-3-c273e75c9fb7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260920-fix-qusb2-v3-3-c273e75c9fb7@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 7oRRUeTcV7u9V_Vj1kUaGg06cev24CXB
X-Proofpoint-GUID: 7oRRUeTcV7u9V_Vj1kUaGg06cev24CXB
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE2MDA0MyBTYWx0ZWRfX4VMefYrAWpdb
 fnXSN+k8SA8v4SKYYeMSPfytYE+Se+cW2d7Zq1wNN1Dsh/pwUtzQ+PUl2tzzLXM4eD3Rt7upZ6D
 oRgVt1BERindQq+XvNiuPWpoeMuwQxU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE2MDA0MyBTYWx0ZWRfX12M0EN/IQC0/
 wLJxXYB5FwdFHzHyZXtxkreNDPcv9byfHW/Qr+D7SS+jejDRLV7MTAUHLVugLY159RPqwJJxV0T
 bQpjDKDtH+WXVURzh9qFbioa4snhlm9ycLZQHeb1j1BXKhaMxrIEMKyBghKXx1bDj2Ys0xgeKQw
 M0Efedbw01QYQKizOMpMBxAXqwNyUQBzOfMFy+LaP1Qodmv3mAIjTdHSxqvx08tZbL7Fjqcgwt+
 VfzyPvn7VkFZyEsv9rW5xpiHvEjO9VF4zsH8vc2m2zqhn27RlAL358jrjtjoWOn8R8USftZ++W4
 XVJnSf0jhySK4pLzqyGYmjwMorg465194LSwtpYfZBEtxNkABul0uNU4VAI87AxD4JeW/3II+r+
 eQa3QlKTkrzUVChy2cC2RO8jmy6qs02GBs/0OB/smjt0gCLQ3aUYrRF6qpxbe/k0MU2imaMYFXc
 /nSmBNMB0PvuNF3GDmg==
X-Authority-Analysis: v=2.4 cv=Se1i5fRu c=1 sm=1 tr=0 ts=6ad2015d cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=ma_R596jXcS_LPZDPT8A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-16_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 priorityscore=1501
 phishscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610160043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_035006_320424_15C9F0D7 
X-CRM114-Status: GOOD (  16.37  )
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

On 9/20/26 3:59 PM, Dmitry Baryshkov wrote:
> There is a confusion regarding the autoresume bit. Some verions of the
> QUSB2 PHY have it in the TEST1 register, while on the others it is a
> part of the TEST_CTRL register. When adding support for autoresume bit,
> the code attempted to simplify the handling of those registers, putting
> both registers to the TEST1 layout entry. In the end,
> ipq6018_regs_layout ended up correctly definig TEST1 register at 0x98
> (because platforms using that layout didn't use autoresume), while
> msm8996_regs_layout used TEST_CTRL offset (0xb8) for the TEST1
> layout entry.
> 
> Update the platform data to specify the register to be used for
> autoresume handling, define both TEST1 and TEST_CTRL registers and merge
> ipq6018_regs_layout and msm8996_regs_layout which become identical
> afterwards.
> 
> Fixes: 891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

GPT has a concern:

[P2] Preserve Shikra's autoresume behavior

shikra_phy_cfg uses msm8996_regs_layout but doesn't set
autoresume_disable. This adds TEST_CTRL[3] to the shared layout, so
runtime suspend will now toggle it for Shikra whenever the PHY mode
is valid. Previously, its unset autoresume_en was zero, making these
writes no-ops. Unless enabling autoresume on Shikra is intentional
and verified, preserve the old behavior by disabling it for this
configuration.

but I think that's fine since we *want* autoresume?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
