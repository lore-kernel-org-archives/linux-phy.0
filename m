Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CA0EC624CE
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 14:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90vZ0VvXPgpur9Yx+g6rNteY5MxXm4Bts8ZGVIqrXQY=; b=aF2nn0prvEa0zy
	3yPIcMchqrlysgNTKECZPt5piRqK8XJH1BifJwVPkLKfvmj/+Y49DiG5n6UQZXyVFLw/DrSiQbnfI
	obavNBvUKvVhw2JcwgfWiAe6h8BB8B6U9NaY7HBfY56vrGveLuKkLHgc6jmznHa8py42Y3lVQUhi0
	Jehl+elCYtXS8a2u/NUCEgLSfCr96Aih9RORWHQO/b+iLtcz5QHh9OwwVSz2hAAsocVwTVUnEz3hY
	qSdv3Un5Pl8fGzRbLW8eSpFLhXngfTFnj9UNqdOXyVcZjhGQmaLstUaI7Oy8JTsprXCgkf4mhlRq7
	HO3S9KLl4+MOj3sy6hAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12lj-00000009bJa-2gnk;
	Mon, 31 Aug 2026 14:13:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12lg-00000009bJ1-2Ok6
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 14:13:49 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67VBA6Wk3517812
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 14:13:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E78ibfppvvm+3TfkUryYoTvM0UqQpmxLebovV8C4ws4=; b=K269S8Jbbty1RrDC
	4bAQ8DH1K9WJrF3+VFDrmx0T/+EPPDFh49Fsz3D1vSDqe2u6IWgtJFUrJTwatCnW
	zGJmDxJ7ao+wCdxmgZjmwKkcDwgrx6VRZ0D30k1QuepZV1SwL+lkUUdcT3al15BB
	0gGSFPLLWl50TydZHbzAZuLf0Ax2IEXyyVmoXPOHukJySl2x94FqsQrKVlHGghye
	JEeWmX5e8Z5gpIM+aAwEf0ZCGiNVuGgNVOm9qMZdDfF43UeBQaNdyBwlUHHSpQf9
	oDc3RNfqIZE9L2qxfHLnhkjlq+hsI/asJjWPlYrneLCp3JX7hsQzSzdaReY+AsCp
	QYkdTw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gd6h91ab3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 14:13:47 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93915f50a5cso664026585a.1
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788185627; x=1788790427; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=E78ibfppvvm+3TfkUryYoTvM0UqQpmxLebovV8C4ws4=;
        b=KQLoXsLp4KI++H+Ij05xnA4KND6ML05eblffJaWQ3h61WefCypKKYcLQnNNXyXp2Vr
         EqtG3z5pUiltfmOi/RpEPGP0HDi7qQxE2ds9dpA9INK8mTOBCblTqBrTRrDct0K2xodB
         sh6cgc1+S6USqqcvr36nzF5sAY6K5hiflwlpqlAFD0ztsDRYGmoIfaqszSBBNaV6Z8q+
         rrioLMRmWQ+dcfKmewzHRWZC4QFnJJIDj92L/TUvQxDvE/DkkmAwj++catOtxzwrKTwB
         3L5GHkHcsPDMwm0LCpnmakIdIktMOSXDA1gWf34ecKjzCmpC3mcIgu53ZRUACA/O0iHQ
         40Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788185627; x=1788790427;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=E78ibfppvvm+3TfkUryYoTvM0UqQpmxLebovV8C4ws4=;
        b=UHY1SLfrr27pjGbmhlDqaJuuP+nOgylrWynkF6bTv+/2bGQXkxaysppCqNpCs3X4fs
         SYi06mnQj0hch1kSWVBAMV8kwUHBoK09fg4E6LHDxOvPdkziWLszGwakL5PtbJ+NC6+N
         W89x7iejztIBzvyPmh8BMA8c2W2uFGkALatYjsaR3bemkc9c9erqu86g+Aohrd+8/f7X
         WXTasJ1qkC6lArL3wVxOPSLmgNuzC1ayHXcpg3jexWGXTCUt7oatOw58Utl8neVn2zPC
         39hzfxy0KO4RGNeq6VWh/RfSJlBrq0ALQUvpiMkJXTTqUkGD+N9WH3lVwoHewvqGTyq/
         vl4g==
X-Forwarded-Encrypted: i=1; AHgh+Rr+hZcg0CRK/X4lyN4SEMvRr7TbMWa9o/Jw0pCjFtzhz0sydSnymfmGdfaMv/wq2RiFL7jWfn+TQa0=@lists.infradead.org
X-Gm-Message-State: AFuF++kpRECOBXdRcuT3vf/GVek5Nm+NrCvQNBux4HnnKPwDy/HbwGWZ
	2I2PHYw++/0UhFY8sU+1YEhv024i4HipAbbghmHQdl83qJyYh7iwGpI0IXA9Zg2a/qCOnJe3jIe
	8iC00a0VW3IfpCsBJj82EflyHO1m0QHEuhlaGBMjrr9s2DpPRXlmSFzAIKMuTUrBMTrOp
X-Gm-Gg: AR+sD13C31zf96S0OIDDLsogop/Ui6JqxLLYGTH1p7VZZrOhVG82fir4OIxuO9HJKuS
	pJccle6Cgm9Lz7pzBMUozlhTH0cF9R0CjgPlUF7t+4C98/2ukpOQg8z/gaIlqbVLu7dRPZZWH/+
	mS57PHVju0U6cgYYyFYSx3XFt5v4SzwnglPYi+mZDew6/p8PxG6uDzbawz4PbHmsaCWgYBHjGJp
	5l8bApZBgPxtWkzjIxQd61f0gBqNOdkdOPOeQ8Q5QMBLDNlDXc8vnswTbZRJ6w4uFpCAsS9gB9h
	ZCMASThFY0QFA+PvH5xcydsVqVo4UtTqmBXCONViM4AP0Omj/72Ui1pgIWLp6T5JMmyRx+o8Hw9
	XZ0H6gmut8K6HHSIAHPLPiSlAab/k
X-Received: by 2002:a05:620a:469f:b0:939:319f:d6e3 with SMTP id af79cd13be357-93936bcaa24mr843606285a.5.1788185626857;
        Mon, 31 Aug 2026 07:13:46 -0700 (PDT)
X-Received: by 2002:a05:620a:469f:b0:939:319f:d6e3 with SMTP id af79cd13be357-93936bcaa24mr843597385a.5.1788185626367;
        Mon, 31 Aug 2026 07:13:46 -0700 (PDT)
Received: from [192.168.1.110] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c255ee7335asm429888266b.27.2026.08.31.07.13.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 07:13:45 -0700 (PDT)
Message-ID: <d95ff41c-dd13-46af-8836-e93ab0926288@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 16:13:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 06/12] dt-bindings: display/msm:
 eliza-hdmi-phy: Add Eliza HDMI PHY
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, olteanv@gmail.com,
        dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org,
        linux-phy@lists.infradead.org
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-6-67843277de17@oss.qualcomm.com>
 <20260828141031.CF3071F000E9@smtp.kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260828141031.CF3071F000E9@smtp.kernel.org>
X-Authority-Analysis: v=2.4 cv=W6UIkxWk c=1 sm=1 tr=0 ts=6a958c1b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=AWiUa7ILvgJRdtSgjkkA:9 a=QEXdDO2ut3YA:10 a=arBHhYMabMMA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 6mMuZTjBNYDocjgnMv5_Ge1MK-Le-6RR
X-Proofpoint-GUID: 6mMuZTjBNYDocjgnMv5_Ge1MK-Le-6RR
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDEyMiBTYWx0ZWRfXx+fL0Pds9Xvz
 4Rt7At/HibSZuiYgjjuM3kEvHxDtYDWY7n3ojysdJ3fCtBpAOVgFdPBnnZpsy7fOLZoYZtYzWJC
 maK3zsO/lJI2ipnw3r7URAAQgPMyliw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDEyMiBTYWx0ZWRfX8nmSgtRCKarZ
 UDAH9FDyM+vRIDUeI+hj4OGLbpO401s+lo1KB6SywY3T6aCm2lOjIDM6g8loNQNfAV89dKMOps0
 0e3KQl06TGwadqbRAcHJT/5a30rUiHI8zF8wNEQup+tImPP/Uc5ZlSg+PLUFDltm2Cb/UK9ML8Z
 ffw3xDTycdG0nJQIE48Be/hzaw4v9Me3TDEKK1ZDwMrVE8CPb8MilqjC+iNY6i5N+aFRfpMJMUS
 Rm6E73whCKzeC2HKuQEEb1aPPc/dSLSw3t1V4Fa9d7+/c5TIK5c0fucLIUh/HqQh/fKlgp984Bw
 l/jiS/pfU5QRabc6DJT/7r2ijTin2c+Zz7IYL+Q9YM59yzjRxe4xuLyMTNB8kZYmyVizyAHrcW4
 Om0r0H0adtMm1SEXPAA5VwuusMCXk9X+EnEo2kSR4o9ZPpQ79h1O7SjpMkn4a6Mo6hW1fXL1GFH
 VOMfEC1WPaq6VvnkYJg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_04,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_071348_735946_B45655DB 
X-CRM114-Status: UNSURE (   6.94  )
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

On 28/08/2026 16:10, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] Devicetree unit address mismatch in schema example.

copy-pasta, ack

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
