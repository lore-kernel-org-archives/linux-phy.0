Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71DE5CD4F26
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 07:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOGvx9UJu53jUyNeqcDZODNTcy8h/tBV/BSlsRujXcY=; b=BsVeDFvfgkR37n
	jcUag00STnb0yAG2qjR9hlGxECo1coQym1+1GYkJavV72iaPCtl61RMWQ/VadT/PlMVK2J+8OuNUG
	aOF87Y41KqsR4X1n1cU3AbpVSZZ4mPDUkQ44WYo3s56+YE4GxOqDOqUu8FJqfLLAUDZBnGJi9FOyP
	qkBorXfSzx9RuN1jGLnZKhZ8JkN80dOjBEOpt5+P3J5Fan323JzIsas3x6UGr4NNjms0AbI2P9duH
	BDqKuOAk4y4wlpBXJPakjXLjo2LO36nrr7LHiStVM/EeKCTkWEo/YSYqvim0HpYjuLAZd+cKowMzj
	mk9SNXgVNvfGhLc8essg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbvh9-00000005qNe-3ff1;
	Tue, 23 Jun 2026 07:37:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbvh6-00000005qNK-22fd
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 07:37:17 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65N6cigp3547183
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 07:37:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	saKpAUAm0YHRCWzitG4zcz7/l09UJ7iL8naDnDZT5rc=; b=cyA4lG35tS9U/fWd
	SQzw7tDRJiw6tglVKpCG1kv/qVni+i+KLAOd/lrQFlr1Aj5h/UPJrKcbzTVJU16Y
	2eTHkQHAf1nGW81lOxMK2IUMs/GAu5mEQWS1Z6r+Chqy43eAAyjKyLuTaPsij429
	cBzSmybAIYQNOg82pZ37mJSIi/CwaD60N56VEpbYjvBsrsnciqhYaVClwld6cOHD
	M6TEr8EhTz8sWoc1FjjCvjFN85c4pFR0qo37eCFsBS8DtM0lR0bUTZs9zhlCTQIg
	D0PNkuFtXxMMuxa+dv188naG1m9yiTQk294F2sH9RVMjLnqFwyS69I4kdDVYkXB2
	toxI2Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ey3ebc1cw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 07:37:14 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8de715f6ebfso12834316d6.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 00:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782200234; x=1782805034; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=saKpAUAm0YHRCWzitG4zcz7/l09UJ7iL8naDnDZT5rc=;
        b=PrbT3Lqea7TQ7u/PsazwpvDfol1fGImuO4f334dQHC7/+04JAdSTWaTekzoMReiFUj
         b0q/XSyxlSzlmE0W64hwV0SDl/G/3XPomASH5cPEJcgj+8Hg/un/XfsOE1hTEq0pO3s4
         fSa3DsvFyuMxzMaZiDA60aSVfSMYH5RB28V5j9F7M+wBU0OaAh4VpCHKOrJTQUWQJ4gD
         MWJ6dHR1rLpD/jfirKLBJ4iR3eEOUx4GZbBy16s/Dsw8u/PSasG0T4k4TUW03Yuh7vUZ
         3N7aaAV4Fhh57OFEnvJBFbl0eJROMEVfluXhKEC+6Tu0zck3PUO1E4WEoncGwAY0gIaC
         KsCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782200234; x=1782805034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=saKpAUAm0YHRCWzitG4zcz7/l09UJ7iL8naDnDZT5rc=;
        b=B4XaOyamoMdvWZEiug7VJEsuR4EGReJmhY6kZqlyPAuaHvM1K4m+3wXbBGe39/GrIM
         57yP+VGmHkJrlu4ybSTb8IZfZX7heDtay9PLTJTQceur5hRNsUC4nLNh1P5tEZsMrLKW
         vXDImseMu2cJ3v4dkNUVMWtAw8I6jmcwJbcvjsWsBqiM8uDS/ACledUbJvnHTJZyACIf
         Llap79wMLKJDg1XRQvJQE+DvL9gY+GziA9C6iQ5tYNePOdINoVNmprIGhY4hr+DdXfxm
         krKgzKW57FXjgq9fghSMJSSQWyuZp3AL83fZFgArFLWcpn3i2pTl1bw7R8XXZDtu6t/r
         NF5Q==
X-Forwarded-Encrypted: i=1; AFNElJ9fDGUskjDwCGbSEqi6cxUOsPpY2lPjItyZH0Ym4wqiisLQnxPj3+Ppt2oKapRif5tTGrojbj1Ksro=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7MjrRuFupxzpvhut5aT5ny+bVnrR5e3QRWW+jYkW5jZiljHdD
	KmzGQXBsenZ2yok4GQS586mCX2cV4Fkfst6rVAep/XxLNm7R6lr0XwtrWqO0jCEeeqxreV7Lqac
	h3Vro9ubolgJipH/T989ryuKABjRjh3a1DB0FQWXq+4Bcq+I+PNHfxliWslLoVbNCVBBG
X-Gm-Gg: AfdE7clZJnwRppl5jCj8iQkbgq2yHkQ7xLxtlqwEu+UlzAfRG/s1FNmZvsvVfREg6C5
	GK+zGnBDtwbKgQAJ9ugB3o8PR1OgtEdCYW0gnris8MaAtfm3sDdW9oKKBE/ruTfGRMF7ib3Ha+U
	hLMyTKtdAye6hEKLKtrJgmVcAalfXTe6wekjLxO4uvhC5boeh+2QW4ryVpP4mz7+9UUNxUOCpIg
	69/VTIe7c/iiyDnRKxPLN9mMGaxqIaa5UnQ7+NRqJdySA9zxApgRGIg4Jz1Q9oWtGpMoy0Bexoe
	4aVkim2VfRs3NkVjgawtnGbJ7zkyXPqAi69L2Oa4rnL1uS0G2ttEsxdemai7x5dwyC7ihnAeqJz
	CNNGYdIYqPBwF0YHWhon9eZDnhJmNEYQGep4=
X-Received: by 2002:a05:620a:4550:b0:8d3:f6c2:5196 with SMTP id af79cd13be357-925cad55e47mr428064085a.5.1782200233836;
        Tue, 23 Jun 2026 00:37:13 -0700 (PDT)
X-Received: by 2002:a05:620a:4550:b0:8d3:f6c2:5196 with SMTP id af79cd13be357-925cad55e47mr428061885a.5.1782200233416;
        Tue, 23 Jun 2026 00:37:13 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c0c5e497fc3sm464765366b.8.2026.06.23.00.37.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2026 00:37:12 -0700 (PDT)
Message-ID: <003e16fc-4179-42c8-ba79-8d37eb92192e@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 09:37:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: qcom: edp: split power-on sequencing by PHY
 version
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260622-glymur-edp-phy-v1-0-814b45089ac9@oss.qualcomm.com>
 <20260622-glymur-edp-phy-v1-1-814b45089ac9@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260622-glymur-edp-phy-v1-1-814b45089ac9@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDA1OSBTYWx0ZWRfX186wD5np49Sm
 vDFIWJsxyTEr3vMY5N6akvC0QkcoYgyo6ZbyxnPmc3wiE2JlA83n0Yx1vFSdH3GfoxgzQVU4Ubt
 +3o2BfRDSWvM02X197gvp6rYvWSaNDo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDA1OSBTYWx0ZWRfX/y1ZVTMOXL/o
 A+mtl/905bqqER4aCfHJDl+rkdiCe08gvYsU10hm4pQYh1Us/T4y0xM8SMe2l3gMNaznMPYuUB7
 mZdi03BWwg6fGje6Fj4nTbDFGkcqYjqzLRHYZBulJvr4hTGtnyLqi2qQ65QeM6FixFsqiT2zxXh
 tZ5onWxeF71QYrP93z1bPQReX9uAfCIM3QKt5/lw16fMXZkR5ULtcdR/RnheoI4qvPsPhLtMsLs
 zFK1wnpc1+9QQkfw9cK1XrFN1TIg9vKtB+ueSAVhXi6Z3B9zL3ARogmZPjPOaa9tx7JM7yQ+IHl
 N5Tsyadma1X2i1Ud/P5WGu/PGMJp1a9lApf06dN7mJHxVxSIJwZZNziD0AO7VEW2jCpJufn5rBP
 Oxyvn/YyXBwENKvrnKbr2MMawyPhnMxCE2ag7jWgghGlyGqdYizZ+zO7poeBsu/iy8Y6cEV/Ruf
 /hsVB8IRlY28x5NQkMA==
X-Authority-Analysis: v=2.4 cv=ILIyzAvG c=1 sm=1 tr=0 ts=6a3a37aa cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=GWZ8nXm4iHO08dpYRpsA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: 5IBgHpi6zBnTr9AExejWkojJRtqP_U19
X-Proofpoint-ORIG-GUID: 5IBgHpi6zBnTr9AExejWkojJRtqP_U19
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_02,2026-06-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 spamscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606230059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_003716_681959_5CC2C9B8 
X-CRM114-Status: GOOD (  11.59  )
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

On 6/23/26 1:29 AM, Bjorn Andersson wrote:
> The eDP PHY power-on sequence has grown version-specific differences,
> but qcom_edp_phy_power_on() still contains the sequence as one shared
> flow. This makes it difficult to add newer PHY programming without
> interleaving it with the v4/v6 sequence.
> 
> Split the power-on sequence into version callbacks for the parts that
> differ between PHY revisions:
> 
>   - pre-power-on preparation
>   - TX programming before PLL enable
>   - rate/PCS programming
>   - lane programming after PLL enable
>   - final status polling
> 
> Keep the existing v4/v6 sequence as the v46 implementation, and wire v8
> to the same callbacks for now. This keeps the programming unchanged
> while making the next patch a v8-only programming update.
> 
> Assisted-by: Codex:GPT-5.5
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---

Look like indeed it's a NOP, as hard as it may be to deduce from the
diff:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
