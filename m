Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC3E606A326
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D472mcf7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=QWa4aQLQ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=UPGP7UU9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ekNGXw5Vu4SaAAntqi10Iz4XB8a38q2Swk7d9K+lNvw=; b=D472mcf7bc+dam6TKKHL6hDnb0
	U6dLDvKsyN/Q8DgEd5je/j/OZjM39vdf4Mzf+Jgs4dYp66L7klepE7UJJ1aMWG2ygFyn8OMk+2wwP
	+dy1+0aY/MBf12NyJ/pmByVgLQuHsU5bwCrutqSPk2CQZAR8DcybZ02sfavQiJ/5KJoygOhFWURxH
	By3sXmYxIKhEmAaZ9yEsSN1+oAObwu2eg5kjc0axIqGUfx4PLDR4M2oUhL2Mza3AvHTAwlF02uUjk
	IYp9Qc+5kVmqSDzXLNOgmX9Z+o+mS6Jk595lyNBw0KqWs2XVeB8pOJwN+QUn1gwPdTVF0uxMbARQw
	3MGVJc1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Yt-00000007N8k-404j;
	Wed, 28 Oct 2026 15:27:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Yr-00000007N89-0pyD
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:27:34 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFAYU11153365
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:27:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SgVHroHe26mmsC3+gKDh7ooh
	cL6PcbX2BsXPMljkV+w=; b=QWa4aQLQJ7t5Qu7+L+ovdgFII6i0DkdBnE8jX0jc
	EKTkBHl1iYmWClp38auy4HjJDN6ANj+baTwqQ//2CFwIEoHRqqVccJfShmhep7ho
	7xnRs5xyXLW9Y3oyYa6lYBVETCEBqNT/kwqV8yvh50pKrsL4XeyocCmaYRkAzObr
	Gq7wuhDAgW/a8Ss8zaoSoyVk+44duNUyY8+GRtbpoFDXFUSpkY0UtoPkKzi77Dvu
	XCFkhj6vdHA4lWYM0toq32Hv+FY9riEz+LODeH60Xd/7dD/cB7oeBKJkvMEDrqZx
	x/K5ED145SAULBltjUxVfsj0ApyBJ+6RzXj8YBT71VDPzQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk6be35ut-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:27:31 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-7c15deb3794so197694137.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793201251; x=1793806051; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=SgVHroHe26mmsC3+gKDh7oohcL6PcbX2BsXPMljkV+w=;
        b=UPGP7UU9aTHrveL1PfjdteeeIgK1BdfqQvDZopr6sHZFURtX7M7TrrqtzE+KpMPwJ3
         8xs3l+qVEnYI0CGP/6O7OeyNGJAG3+gbvn5vv3lJL+qFzA6nSEaWjD8SimlhotfhPcvu
         XuHoYqvnhjfRKdQLkkgV3moB98GS6x+RXnS01D8pqmh5JOKA50EWayb3NVqhNHYzJHk/
         zkLLI3E0+e/pRnAF+2sLKM0sFFBKh2ugp+NhnnjHfK5WTPo7DZrdClqBPeEi7BrUTFhW
         KpCNZSYO55w0LHjGhrQmfoDEoFvL8uGfX0GCxKUeqs17aNxtJBAs/ouuAmKANOHTO7zc
         wZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793201251; x=1793806051;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SgVHroHe26mmsC3+gKDh7oohcL6PcbX2BsXPMljkV+w=;
        b=aqTJgV63AanuDSVPXehhQaf91BT47b1Voh5BSOJ22JuSJhhwAC5N4HaYYub8wnCEYO
         2nEowBoUpMwpvPkcUorV+OrokoWV7zRoRGTP+MLEf1Q/0NNyjqlfKv3mGG97U+F85PS2
         cTNSCc3CEEtkpWdtPSaJWfn34UpA9/uhWcnUSr/APKaQiqmbXxhq4KrTLJXDc5ODIXrz
         OL6/JoPvh+wOk+4IO7EJKJaEnpCGN4fITuVLwWBVLUHbdyF9mUou8W+NJBVsXaWLxX+v
         WvjkKvtvGlONrf2rn49jh1in48PM7KLlRLxwxExMOJNwIUdIiSlVAMZwKYYiLWD5YMe3
         ihXg==
X-Forwarded-Encrypted: i=1; AKwUvByaDYugui91Bumn543iAwMUvdiy054XMXwRuGg2sV+5fnzE2eqWGwBx5bLyJ6haOBQ1k4CkS8hdB50=@lists.infradead.org
X-Gm-Message-State: AFq9FYLr7/c4Km3rr5xhj02C8HFtBKwKW7eUE5xM1vPntgLaDcXPbzQJ
	7esHivDuE6wcQLabIh/hFeKOZ/wSq6snBNmbZvnO2ksy9N3bKYIejqnTvJuy2KHTd8fKXdvITXH
	OyHcFbdK4AZtdVN1hld5y2VQlqKUgpzVhMlWCbzNSW7qDubTrI/V9vXDVAnN6atT+6pHmZoR1sF
	QF
X-Gm-Gg: AYBFou31TnlOxwWh8hM20pfqqWTbtcBEtSMD5uYlN8W0gxHjc/+b3MLvzEYCaxqtXfa
	+PtLeyzUNp1CLdtWP1fVM3/yz9BCjvTTMbQWCgxKkXqQEco2Zn8Idfhnx3LfHWI+hjptTOAamk+
	A5qeNsZwee6Ls2/oCjsDIOhOdNhu6ogqjhxSDpYxImbCC1mi1kWa6PlEtgVvTeLDvvDfZAcZaYC
	Tr2yODY14dKH00RkIquXkYZ08hw0sd3nH/x3upFfFmlSq+Aardz6+UgwvD0pLmoVlo8DHQ0JvA3
	RmMsNJXJQFNBJWqt4Tk5zTv2VopLovSjhTWuBCAE3ADPWsnGOGzAM1Wyns5IugzdiMkz3gOTHtP
	lzfCUKFoC3PeqqS90yTtzWPT+JKLvZyTVt1Rif3bFrppFxNyF105fWTo3HqfmFmbRtg==
X-Received: by 2002:a05:6102:14a1:b0:7ce:6288:eb0a with SMTP id ada2fe7eead31-7d03a5a3397mr1252794137.18.1793201251152;
        Wed, 28 Oct 2026 08:27:31 -0700 (PDT)
X-Received: by 2002:a05:6102:14a1:b0:7ce:6288:eb0a with SMTP id ada2fe7eead31-7d03a5a3397mr1252748137.18.1793201250182;
        Wed, 28 Oct 2026 08:27:30 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.187])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a969e61f9bsm35094685e9.2.2026.10.28.08.27.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:27:29 -0700 (PDT)
Date: Wed, 28 Oct 2026 17:27:27 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Subject: Re: [PATCH v23 02/15] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
Message-ID: <o5sj26cm4rwf5w7pxizqln3dvyjfbpgkvfbfqn2isn3bwsxvux@yurxx5ptr7gp>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-2-95f250b18612@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261028-kaanapali-camss-v23-2-95f250b18612@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Kx3htFaFs1ZPsrsU9VRohhKuxhCm3HOn
X-Authority-Analysis: v=2.4 cv=HeuB3SE8 c=1 sm=1 tr=0 ts=6ae21463 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=Qvngrl3H0rQgGg+94q4QgA==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=GCssnZSmVGVrPJfrQDAA:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX6wy25bZU+EMC
 8i0HkSGbo41xL9Vym2vvRiM1uLmslsiCBq4K1s9QGLXIU2mz/3FLcpU6aOqqGGAViiGDPjq36z/
 94s/eCfJKrnKvPK7Vu/M2sYph1DFijE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX1Z+ERJLfEOez
 5gswzCXz6SvT69xtXqD2aWdGWhTGjjcN5riOwUS1/4AOHmKpYTGLce63bbN9HoFGIut8rPXCY71
 yJPrc7KP1ywrQbeSD1vxTpPu92V76McxzqpE0KUT31QAYGq79t/2u8+lOXYRcD8EqmNfTGnX9T9
 7ZB7K1x9pgb+CN+wpuIX28R/1k1PybqSRaC7iHO6QLMrfqFod1ZqGoFXQyC3TImuifJIwsgoiSy
 LEGvS33i8+8nKx4UYf6sP13FvAEQyIsYM+wi7fZbvso/tOOSii/XAxThFvexnHVBTO60yjPUEgK
 oeYdSiOsFecsjRWHb8Q6Z2f+YKLMIgLkuI2aNOpLZ7h3zRiSE8iLglfdGGAjvYfkVeDrD5JT+lm
 8uiqt05cF0mw1+PDdOyAgWP1mCILYik9nBLsu0JJStNBXyMEz5dnIn2BRiuS7MYoQRcrghLpbbj
 yNdXj5HFewQ3elpIzdw==
X-Proofpoint-GUID: Kx3htFaFs1ZPsrsU9VRohhKuxhCm3HOn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082733_351961_43ACCF73 
X-CRM114-Status: GOOD (  10.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-28 08:20:36, Hangxiang Ma wrote:
> The CSI2 PHY common status registers are not at a fixed offset from the
> common register block across SoCs: x1e80100 uses 0xb0 while other 3PH
> v2.4.0 parts differ.
> 
> Replace the hard-coded 0xb0 in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn() with
> a per-SoC common_status_offset field in struct mipi_csi2phy_device_regs,
> initialising x1e80100 to 0xb0 so behaviour is unchanged. This is a
> no-functional-change preparation for describing other SoC offsets.
> 
> Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
