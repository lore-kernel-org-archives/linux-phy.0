Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D0C8FAD3F2
	for <linux-phy@archiver.kernel.org>; Thu, 23 Apr 2026 03:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTdkjEVqr77+vBHoCMHjhUk3WHJCx/nNKLl+oiI4mcs=; b=aev//1WrNzU6Tr
	Qqwp1qgM4HM0vA+TRJvOPoYhYad7ciGtawRpukwPyvgoqviHdSgK08BGR2AtNDCw1zUtt7t/0Ke/H
	CGUCZYfr2aFnH7KP3T1V4PPmQTbbJV0Sxxumu2UI63fDKSMKnOTjf6frd0UEFuyf5O7vlafPyxINL
	9jnus5TV/Ce4mw0OEeLuENwihzCOBT7Yg9DEeZJiVhdlTYeJMIbFdT6eB1+NDJfzw9ctTAL1CR/+1
	omUf+Gq+168TzeVQoW6UjxAyEJx7I94yCAaoLmb4S1FGeEZGXIKlLMaqVS62V3FdpGjS3A2/W+hPF
	3ms9DFrUrLItHgIfH2yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFkkJ-0000000Ayvk-10PE;
	Thu, 23 Apr 2026 03:28:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFkkG-0000000AyvQ-1wJd
	for linux-phy@lists.infradead.org;
	Thu, 23 Apr 2026 03:28:53 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63N3CfmK2012004
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 03:28:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kb3paQVuF8IH5wHvAH6d5Sw/eLOL+1qrUzUoZXFmmuY=; b=HAncwQT1ulJYY4Hh
	1gRECaxEMrC07fwqQfR9/rgjdI5ys/e5/XoR2qEUjI7XndBIcXuPBi2V6IwuW4ra
	8KvSmQnIi0p349ZpUIipq229EiR/6w0hyYUcjn5SmpkXQscFr0P9//F3t+8dS2LA
	zIxJsohxewGgPDiVUF5UvCCqth3NgQAWVtOmtXqfXjRSZzESHJ3hJEzjbfdWCuNY
	JnE4MP1Cs0OSYbjpG3beIshwe5a6WnlJN69yl7T2YAEfcx5y1HDnAGN5QLF7FDGP
	2EG4xhc6VPd/IvLXWs+xRBGlbH5TIHzokYzK7Kq4pvWBw0DfGEkeP4OiOgpc+Wgb
	qZ8IcQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq1h7a02f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 03:28:51 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b630753cc38so7963564a12.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 20:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776914930; x=1777519730; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kb3paQVuF8IH5wHvAH6d5Sw/eLOL+1qrUzUoZXFmmuY=;
        b=iAuZSa/c9arCwTIEWqiJarMIcb5yxLDDa+sN5R/jpmjb4UVgkpwjJDzamWUp8UhV/j
         WkeL6eOc5Bnf4B2Der+3pWPS2ms3wvpgFjQyNXdefFpMPG5oKm5vzs5sji1qv2rSHPD0
         kJE7gQbUXPaZ47dyZT3HB3ZgKrj7ah7Vv2ccwhaXf9ToKedtaR0MKYuHDW84fP4bjXvC
         w2nemkgsaNbn2qpQf0KZXLASDWSAp1PLRbd9xKroddp9qPXrvYU3dTknUX7jj7YamTOG
         8VtgBdVLd9XvcSEuhenav68j9/TFnfGlvRT+Z5qwy4Sjsk6W5yXkbWO658jYLmIUBjun
         UUhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776914930; x=1777519730;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kb3paQVuF8IH5wHvAH6d5Sw/eLOL+1qrUzUoZXFmmuY=;
        b=RIKtr3H0kG1BgcNU1JNvLAVn1Y8Vw4ZyzCHykbsmE1MNaZugYaU/fir03oq+X1rzOA
         tOMA93g3M2WE5cYx6cb/l+faGTlBiQifHcvC6sfGZRLSXAO3EexiWKsU2QYTRQEH6CRv
         kJXrDSofftadlQGseOhtAOZJETMK3kZUQoO79RpRpnvN9Mj18TVFvxmorr+0wmJIoZsF
         B5ZqCx7HgcyHoqTJtZb0m23LLaZX3eh4oz6iCpt+d/GydJR5xkKtx1X1WacqMfwbAvU+
         rlwS3mzCpxPdO8vyONoCj7eJA579TynUtitvaDctWCg9XMCEgtKBqhlloTJ/c8xls/eL
         HE6A==
X-Forwarded-Encrypted: i=1; AFNElJ/KWOlaYJXVOlcDW3CxNy4KSj2Bo21lcf8cK6aPRKJTeI57DICBqFeDLZYphbocX/Uhdx7E2FPzP7E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5IasPyRVdFAhrz2nT1EtMEVUV7sO4YWM11E/RmlyGgwISJkYm
	PZf6Pgj0XKpZgTZagNj6PosbPnOUgpi0VEZJb3vGCVH0pQgDIRlVnyfb8HktE4NH7GHbvf3YFTi
	hruYUWsatLrFvBJ+UnYnN1rGd93v9rWNFV3UsfcLV787AUxiE4VYosqm54bi6QhUHk5rQ
X-Gm-Gg: AeBDies9YyXxAZX1DRlpOQdMLgrFDvW6zFjPg5KCaeuvLZfSycT5wI9lkKIgl7o0PDL
	fZGGBZgBes2OPJwlAieM1PO0BTRsMvmgP+TLW40MNt/nK6Ej9ktw5d1PI02NdWi4+xPA5AXb6R2
	Sda3TEzs8T9b+nHIL0fWMoRMLA2hLqwxSNOzrnRP9vD5yEbNI4PKU7yXLNhc3AEoY+KlQde+zbl
	/0+vLOyvPVQJK3r+ueqByBanNM8f+iEDp3Z6ADqHB63f3DKX6u8fsK6RyPd10LBRWWwEb4uwqWA
	yUuoJ0SUvwF4T4XxvZpAH0L3wVjxd38+6K1E5So0Qcu4UOtcTWBXlg0nMskH52RifC7/v4ichwB
	KC5dHYslP2nQqvzhitSpLU32bp4n9vs29ne+8P1GGN3lKdrL3Rx6W4ccVNw1/pq0LONnlBw3GzP
	emCPg6BVZ9MLorUtiEVW5vuUtfLYag
X-Received: by 2002:a05:6a20:94cb:b0:39f:8aaa:face with SMTP id adf61e73a8af0-3a08d67bd3bmr28758312637.1.1776914930241;
        Wed, 22 Apr 2026 20:28:50 -0700 (PDT)
X-Received: by 2002:a05:6a20:94cb:b0:39f:8aaa:face with SMTP id adf61e73a8af0-3a08d67bd3bmr28758290637.1.1776914929704;
        Wed, 22 Apr 2026 20:28:49 -0700 (PDT)
Received: from [10.133.33.123] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c797701f622sm13895523a12.21.2026.04.22.20.28.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2026 20:28:49 -0700 (PDT)
Message-ID: <cbfa3db8-e500-42ce-8302-16af7b19afe1@oss.qualcomm.com>
Date: Thu, 23 Apr 2026 11:28:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] phy: qcom: edp: Add SC7280/SC8180X
 swing/pre-emphasis tables
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <20260422-edp_phy-v4-3-c38bef2d027b@oss.qualcomm.com>
 <df40b4d1-6133-4d49-a7e3-47cbb2b058e9@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <df40b4d1-6133-4d49-a7e3-47cbb2b058e9@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: CLs3XT_cFvuyYEr7Wtz5DmOsNfzwxacX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIzMDAzMCBTYWx0ZWRfX/80jaDPaeR5o
 KdmHvYDGMomdWTZLtG/iGg5CYUBI4bvFYePBhBCJSqWctfhSBkXL76pQKFMcZ5sxhszwUppnQzs
 yCtKfdbhS6ZN7sUTedaii5eN7Ny4YO7QRijoLeJ3ws1M5oZcr4J9uAwoGATQDH65diTkktEhZ8Z
 vQQXCbuUacW6WiUqrPj5hWC7DoVjnmYLcwuOpMxCdoTpIaWM8jon4u2peSHiQAGCjkTqGpr2Qal
 fNDCk2u7R1iBdHXVHO/SP+eEVzxQtq1Ip3PrdbiXOdXvt36Ymc3cvg9y8DEkMj9o2VBKPJzoR8x
 /+PqrVsZQ2gVMGGHGBaZau5VjU821FaK9y4KLD6fx+D2KfDzkupqe0M/a7bm9of7N0chX7ARLpU
 xI5M1IVX9hZKsCg+l96iN6w7ILEEnzJmIcINovXIhudpPgibpo27R8Ony3vWaPYjut2+CW1DMav
 1Tz8h5H4GRa39txLSpA==
X-Authority-Analysis: v=2.4 cv=UqNT8ewB c=1 sm=1 tr=0 ts=69e991f3 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=Yx4QOS3gQyyNq8E9byYA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: CLs3XT_cFvuyYEr7Wtz5DmOsNfzwxacX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-22_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604230030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_202852_629936_8B8A968D 
X-CRM114-Status: GOOD (  17.95  )
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



On 4/22/2026 6:42 PM, Konrad Dybcio wrote:
> On 4/22/26 8:01 AM, Yongxing Mou wrote:
>> SC7280 and SC8180X previously shared the same cfg because they did not use
>> swing/pre-emphasis tables. Add the corresponding tables for these
>> platforms. Since they have different PHY sub-versions, their eDP/DP mode
>> tables also differ, so move SC8180X to its own cfg instead of reusing the
>> SC7280 one.
>>
>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
>> ---
> 
> 
> 
>> +static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v2 = {
>> +	.swing_hbr_rbr = &edp_swing_hbr_rbr,
> 
> For eDP / low-Vdiff:
> 
> I believe the RBR swing settings for 8180 should
> instead be:
> 
> 0x07 0x0f 0x17 0x1f (matches)
Emm i see from ipcat eDP Low vdiff(Lower HBR)  swing settings is
0x07 0x0f 0x16 0x1f
> (the rest differs)
> 0x0d 0x16 0x1e
> 0x11 0x1b
> 0x16
> 


> The preem RBR almost matches, one byte is off
> (arr[0][1] = 0x12 on poipu, 0x11 on kodiak)
> 
Thanks,, here need to be fixed.

> The swing and preem settings for HBR3 look OK
> 
> For DP / low-Vdiff:
> 
> .swing_hbr3_hbr2 OK
> .swing_hbr_rbr - I don't know. The docs are unclear whether the same
> settings should be used for RBR and HBR3, but maybe? There's a
> separate table for mini-DP but I doubt there's any poipu boards with
> such a connector (maybe some obscure ones)
> 
> .pre_emphasis_hbr3_hbr2 OK
> .pre_emphasis_hbr_rbr same as above
> 
Thanks for point this, so pre_emphasis_hbr_rbr same with 
pre_emphasis_hbr3_hbr2?  I also don't get it's RBR or HBR3 from phy HPG. 
But now i think only eDP will be used in upstreamed poipu boards. i 
check the dts and not find any poipu boards will use DP mode(or mini DP)..
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
